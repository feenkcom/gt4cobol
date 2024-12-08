Class {
	#name : #GtCobolProgram,
	#superclass : #FAMIXScopingEntity,
	#instVars : [
		'mapExpressions',
		'xctlToExpressions',
		'xctlFromExpressions',
		'transaction',
		'jclSteps',
		'fileDescriptors',
		'returnToExpressions',
		'returnFromExpressions',
		'callTargets',
		'callSources'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #graphing }
GtCobolProgram class >> paintProgramDependenciesWith: mondrian from: startItems [
	| todo done item programs screens forwardEdges backEdges |
	done := IdentitySet new.
	todo := OrderedCollection withAll: startItems.
	programs := OrderedCollection new.
	screens := OrderedCollection new.
	forwardEdges := IdentityDictionary new.
	backEdges := IdentityDictionary new.
	[ todo notEmpty ]
		whileTrue: [ item := todo removeFirst.
			(done includes: item)
				ifFalse: [ done add: item.
					(item isKindOf: GtCobolProgram)
						ifTrue: [ programs add: item.
							item mapExpressions
								do: [ :each | 
									(done includes: each to)
										ifTrue: [ (backEdges at: each ifAbsentPut: [ IdentitySet new ]) add: each to ]
										ifFalse: [ todo add: each to.
											(forwardEdges at: each ifAbsentPut: [ IdentitySet new ]) add: each to ] ].
							item xctlToExpressions
								do: [ :each | 
									each toPrograms
										do: [ :to | 
											(done includes: to)
												ifTrue: [ (backEdges at: each ifAbsentPut: [ IdentitySet new ]) add: to ]
												ifFalse: [ todo add: to.
													(forwardEdges at: each ifAbsentPut: [ IdentitySet new ]) add: to ] ] ].
							item callSources
								do: [ :each | 
									each toProgram
										ifNotNil: [ :to | 
											(done includes: to)
												ifTrue: [ (backEdges at: each ifAbsentPut: [ IdentitySet new ]) add: to ]
												ifFalse: [ todo add: to.
													(forwardEdges at: each ifAbsentPut: [ IdentitySet new ]) add: to ] ] ] ]
						ifFalse: [ screens add: item.
							item mapExpressions
								do: [ :expr | 
									(done includes: expr to)
										ifTrue: [ (backEdges at: expr ifAbsentPut: [ IdentitySet new ]) add: expr to ]
										ifFalse: [ todo add: expr to.
											(forwardEdges at: expr ifAbsentPut: [ IdentitySet new ]) add: expr to ] ] ] ] ].
	mondrian nodes
		stencil: [ :program | 
			BrLabel new
				fitContent;
				background: ((startItems includes: program)
						ifTrue: [ Color blue muchLighter ]
						ifFalse: [ Color white ]);
				margin: (BlInsets all: 10);
				padding: (BlInsets all: 10);
				aptitude: BrShadowAptitude new + BrGlamorousLabelAptitude new glamorousCodeFontAndSize;
				text: program name asRopedText ];
		with: programs.
	mondrian nodes
		stencil: [ :each | each asElement preventMouseEvents asScalableElement size: 120 @ 80 ];
		with: screens.
	mondrian edges
		fromCenterBottom;
		toCenterTop;
		stencil: [ :d | 
			BlParabollaArcElement new
				zIndex: -1;
				curvatureFraction: 0.1;
				border: (BlBorder paint: Color blue muchLighter width: 2);
				toHead: (BlArrowheadSimpleArrow new
						border: (BlBorder builder
								paint: Color blue muchLighter;
								width: 2;
								build)) ];
		connect: forwardEdges keys
			from: #from
			toAll: [ :each | forwardEdges at: each ].
	mondrian edges passive
		fromCenterTop;
		toCenterBottom;
		stencil: [ :d | 
			BlParabollaArcElement new
				zIndex: -1;
				curvatureFraction: 0.1;
				border: (BlBorder paint: Color veryVeryLightGray width: 1);
				toHead: (BlArrowheadSimpleArrow new
						border: (BlBorder builder
								paint: Color veryVeryLightGray;
								width: 1;
								build)) ];
		connect: backEdges keys
			from: #from
			toAll: [ :each | backEdges at: each ].
	mondrian layout dominanceTree
		nodeDistance: 10;
		levelDistance: 30
]

{ #category : #accessing }
GtCobolProgram >> callSources [
	<MSEProperty: #callSources type: #GtCobolCallExpression opposite: #fromProgram>
	<multivalued>
	^ callSources
]

{ #category : #accessing }
GtCobolProgram >> callSources: anObject [
	callSources value: anObject
]

{ #category : #accessing }
GtCobolProgram >> callTargets [
	<MSEProperty: #callTargets type: #GtCobolCallExpression opposite: #toProgram>
	<multivalued>
	^ callTargets
]

{ #category : #accessing }
GtCobolProgram >> callTargets: anObject [
	callTargets value: anObject
]

{ #category : #accessing }
GtCobolProgram >> fileDescriptors [
	<MSEProperty: #fileDescriptors type: #GtCobolFileDescriptor opposite: #program>
	<multivalued>
	^ fileDescriptors
]

{ #category : #accessing }
GtCobolProgram >> fileDescriptors: anObject [
	fileDescriptors value: anObject
]

{ #category : #'as yet unclassified' }
GtCobolProgram >> gtDependenciesFor: aView [
	<gtView>
	^ aView forward
		title: 'Programs & screens';
		priority: 10;
		object: [ GtCobolProgramGroup with: self ];
		view: #gtProgramDependenciesFor:
]

{ #category : #'as yet unclassified' }
GtCobolProgram >> gtFunctionsFor: aView [
	<gtView>
	^ aView list
		title: 'Functions';
		items: [ functions ]
]

{ #category : #'as yet unclassified' }
GtCobolProgram >> gtVariablesFor: aView [
	<gtView>
	^ aView list 
		title: 'Variables';
		items: [ self globalVariables ]
]

{ #category : #initialization }
GtCobolProgram >> initialize [
	super initialize.
	xctlFromExpressions := FMMultiMultivalueLink on: self opposite: #toPrograms.
	xctlToExpressions := FMNullMultivalueLink
			on: self
			opposite: #fromProgram:
			selector: #xctlToExpressions.
	mapExpressions := FMNullMultivalueLink
			on: self
			opposite: #map:
			selector: #mapExpressions.
	jclSteps := FMNullMultivalueLink
			on: self
			opposite: #program:
			selector: #jclSteps.
	fileDescriptors := FMNullMultivalueLink
			on: self
			opposite: #program:
			selector: #fileDescriptors.
	returnFromExpressions := FMMultiMultivalueLink on: self opposite: #toPrograms.
	returnToExpressions := FMNullMultivalueLink
			on: self
			opposite: #fromProgram:
			selector: #returnToExpressions.
	callTargets := FMNullMultivalueLink
			on: self
			opposite: #toProgram:
			selector: #callTargets.
	callSources := FMNullMultivalueLink
			on: self
			opposite: #fromProgram:
			selector: #callSources
]

{ #category : #accessing }
GtCobolProgram >> jclSteps [
	<MSEProperty: #jclSteps type: #GtJCLStep opposite: #program>
	<multivalued>
	^ jclSteps
]

{ #category : #accessing }
GtCobolProgram >> jclSteps: aCollection [
	jclSteps value: aCollection
]

{ #category : #accessing }
GtCobolProgram >> mapExpressions [
	<MSEProperty: #mapExpressions type: #GtBMSMapExpression opposite: #program>
	<multivalued>
	^ mapExpressions
]

{ #category : #accessing }
GtCobolProgram >> mapExpressions: anObject [
	mapExpressions value: anObject
]

{ #category : #accessing }
GtCobolProgram >> returnFromExpressions [
	<MSEProperty: #returnFromExpressions type: #GtCobolCicsReturnExpression opposite: #toPrograms>
	<multivalued>
	^ returnFromExpressions
]

{ #category : #accessing }
GtCobolProgram >> returnFromExpressions: anObject [
	returnFromExpressions value: anObject
]

{ #category : #accessing }
GtCobolProgram >> returnToExpressions [
	<MSEProperty: #returnToExpressions type: #GtCobolCicsReturnExpression opposite: #fromProgram>
	<multivalued>
	^ returnToExpressions
]

{ #category : #accessing }
GtCobolProgram >> returnToExpressions: anObject [
	returnToExpressions value: anObject
]

{ #category : #accessing }
GtCobolProgram >> transaction [
	<MSEProperty: #transaction type: #GtCICSTransaction opposite: #program>
	^ transaction
]

{ #category : #accessing }
GtCobolProgram >> transaction: anObject [
	| oldValue |
	anObject == transaction ifTrue: [ ^ self ].
	transaction ifNotNil: [ oldValue := transaction ].
	transaction := anObject.
	(oldValue notNil and: [ oldValue program == self ])
		ifTrue: [ oldValue program: nil ]
]

{ #category : #accessing }
GtCobolProgram >> xctlFromExpressions [
	<MSEProperty: #xctlFromExpressions type: #GtCobolCicsXctlExpression opposite: #toPrograms>
	<multivalued>
	^ xctlFromExpressions
]

{ #category : #accessing }
GtCobolProgram >> xctlFromExpressions: anObject [
	xctlFromExpressions value: anObject
]

{ #category : #accessing }
GtCobolProgram >> xctlFromPrograms [
	^ xctlFromExpressions collectAsSet: [ :each | each fromProgram ]
]

{ #category : #accessing }
GtCobolProgram >> xctlToExpressions [
	<MSEProperty: #xctlToExpressions type: #GtCobolCicsXctlExpression opposite: #fromProgram>
	<multivalued>
	^ xctlToExpressions
]

{ #category : #accessing }
GtCobolProgram >> xctlToExpressions: anObject [
	xctlToExpressions value: anObject
]

{ #category : #accessing }
GtCobolProgram >> xctlToPrograms [
	^ xctlToExpressions flatCollectAsSet: [ :each | each toPrograms ]
]
