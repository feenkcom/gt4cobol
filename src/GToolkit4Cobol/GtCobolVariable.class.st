Class {
	#name : #GtCobolVariable,
	#superclass : #FAMIXGlobalVariable,
	#instVars : [
		'length',
		'offsets',
		'container',
		'components',
		'potentialValues',
		'redefinesVariable',
		'redefinedByVariables',
		'maxOccurrences',
		'fileDescriptors',
		'cicsFileAccesses',
		'conditions',
		'xctlExpressions',
		'fileStatusInDescriptors',
		'recordKeyInDescriptors',
		'ridfldFileAccesses'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolVariable >> addOffset: anIndex [
	0
		to: maxOccurrences - 1
		do: [ :i | 
			| index |
			index := anIndex + (i * length).
			offsets add: index.
			self components
				inject: index
				into: [ :sum :each | 
					each isRedefines
						ifTrue: [ sum ]
						ifFalse: [ each addOffset: sum.
							sum + each totalByteSize ] ] ]
]

{ #category : #accessing }
GtCobolVariable >> cicsFileAccesses [
	<MSEProperty: #cicsFileAccesses type: #GtCICSFileAccess opposite: #variable>
	^ cicsFileAccesses
]

{ #category : #accessing }
GtCobolVariable >> cicsFileAccesses: anObject [
	cicsFileAccesses value: anObject
]

{ #category : #accessing }
GtCobolVariable >> components [
	<MSEProperty: #components type: #GtCobolVariable opposite: #container>
	<multivalued>
	^ components
]

{ #category : #accessing }
GtCobolVariable >> components: anObject [
	components := anObject
]

{ #category : #accessing }
GtCobolVariable >> conditions [
	<MSEProperty: #conditions type: #GtCobolCondition opposite: #variable>
	<multivalued>
	^ conditions
]

{ #category : #accessing }
GtCobolVariable >> conditions: anObject [
	conditions value: anObject
]

{ #category : #accessing }
GtCobolVariable >> container [
	<MSEProperty: #container type: #GtCobolVariable opposite: #components>
	<container>
	^ container
]

{ #category : #accessing }
GtCobolVariable >> container: anObject [
	container := FMMultivalueLink
			on: self
			update: #components
			from: self container
			to: anObject
]

{ #category : #accessing }
GtCobolVariable >> fileDescriptors [
	<MSEProperty: #fileDescriptors type: #GtCobolFileDescriptor opposite: #variables>
	<multivalued>
	^ fileDescriptors
]

{ #category : #accessing }
GtCobolVariable >> fileDescriptors: anObject [
	fileDescriptors value: anObject
]

{ #category : #accessing }
GtCobolVariable >> fileStatusInDescriptors [
	<MSEProperty: #fileStatusInDescriptors type: #GtCobolFileDescriptor opposite: #fileStatusVariables>
	<multivalued>
	^ fileStatusInDescriptors
]

{ #category : #accessing }
GtCobolVariable >> fileStatusInDescriptors: anObject [
	fileStatusInDescriptors value: anObject
]

{ #category : #views }
GtCobolVariable >> gtComponentsFor: aView [
	<gtView>
	^ aView columnedTree
		title: 'Components';
		items: [ self components sorted: [ :a :b | a offsets first < b offsets first ] ];
		children: [ :each | each components ];
		column: 'Name' text: [ :each | each name ];
		column: 'Offset'
			text: [ :each | (each offsets first - self offsets first) printString ]
			width: 100;
		column: 'Length'
			text: [ :each | each length printString ]
			width: 100
]

{ #category : #accessing }
GtCobolVariable >> gtOverlappingVariablesFor: aView [
	<gtView>
	| overlapping |
	overlapping := self overlappingVariables.
	overlapping size < 2 ifTrue: [ ^ aView empty ].
	^ aView columnedList
		title: 'Overlapping';
		items: [ overlapping
				asSortedCollection: [ :a :b | 
					a offsets first < b offsets first
						or: [ a offsets first = b offsets first
								and: [ a length > b length or: [ a length = b length and: [ a == b container ] ] ] ] ] ];
		column: 'Name'
			text: [ :each | 
				each == self
					ifTrue: [ each name asRopedText bold ]
					ifFalse: [ each name asRopedText ] ];
		column: 'Start'
			text: [ :each | 
				String
					streamContents: [ :stream | 
						each offsets
							do: [ :i | stream print: i ]
							separatedBy: [ stream nextPutAll: ', ' ] ] ];
		column: 'Length' text: [ :each | each length gtDisplayText ]
]

{ #category : #accessing }
GtCobolVariable >> gtPotentialAccessesFor: aView [
	<gtView>
	^ aView forward
		title: 'Accesses';
		object: [ self potentialAccesses ];
		view: #gtItemsFor:
]

{ #category : #accessing }
GtCobolVariable >> gtPotentialReadAccessesFor: aView [
	<gtView>
	^ aView forward
		title: 'Read accesses';
		object: [ self potentialAccesses reject: [ :each | each isWrite ] ];
		view: #gtItemsFor:
]

{ #category : #accessing }
GtCobolVariable >> gtPotentialWriteAccessesFor: aView [
	<gtView>
	^ aView forward
		title: 'Write accesses';
		object: [ self potentialAccesses select: [ :each | each isWrite ] ];
		view: #gtItemsFor:
]

{ #category : #initialization }
GtCobolVariable >> initialize [
	super initialize.
	length := 0.
	maxOccurrences := 1.
	offsets := OrderedCollection new.
	components := FMNullMultivalueLink
			on: self
			opposite: #container:
			selector: #components.
	redefinedByVariables := FMNullMultivalueLink
			on: self
			opposite: #redefinesVariable:
			selector: #redefinedByVariables.
	fileDescriptors := FMMultiMultivalueLink on: self opposite: #variables.
	cicsFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #variable:
			selector: #cicsFileAccesses.
	potentialValues := Set new.
	conditions := FMNullMultivalueLink
			on: self
			opposite: #variable:
			selector: #conditions.
	xctlExpressions := FMNullMultivalueLink
			on: self
			opposite: #commonAreaVariable:
			selector: #xctlExpressions.
	fileStatusInDescriptors := FMMultiMultivalueLink
			on: self
			opposite: #fileStatusVariables.
	recordKeyInDescriptors := FMNullMultivalueLink
			on: self
			opposite: #recordKey:
			selector: #recordKeyInDescriptors.
	ridfldFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #ridfld:
			selector: #ridfldFileAccesses.
]

{ #category : #accessing }
GtCobolVariable >> isRedefines [
	^ redefinesVariable notNil
]

{ #category : #accessing }
GtCobolVariable >> length [
	^ length
]

{ #category : #accessing }
GtCobolVariable >> length: anObject [
	length := anObject
]

{ #category : #accessing }
GtCobolVariable >> maxOccurrences [
	^ maxOccurrences
]

{ #category : #accessing }
GtCobolVariable >> maxOccurrences: anObject [
	maxOccurrences := anObject
]

{ #category : #printing }
GtCobolVariable >> mooseNameOn: stream [
	parentScope
		ifNotNil: [ parentScope mooseNameOn: stream.
			stream << '::' ].
	super mooseNameOn: stream
]

{ #category : #accessing }
GtCobolVariable >> offsets [
	^ offsets
]

{ #category : #accessing }
GtCobolVariable >> offsets: anObject [
	offsets := anObject
]

{ #category : #accessing }
GtCobolVariable >> overlappingVariables [
	<MSEProperty: #overlappingVariables
		type: #GtCobolVariable
		opposite: #overlappingVariables>
	<multivalued>
	<derived>
	| globals model |
	model := self mooseModel.
	model ifNil: [ ^ {self} ].
	globals := model allWithType: self class.
	^ globals
		select: [ :each | 
			each parentScope == self parentScope
				and: [ each length notNil
						and: [ self length notNil
								and: [ each offsets
										anySatisfy: [ :eachOffset | 
											self offsets
												anySatisfy: [ :selfOffset | 
													(selfOffset + self length - 1 < eachOffset
														or: [ eachOffset + each length - 1 < selfOffset ]) not ] ] ] ] ] ]
]

{ #category : #accessing }
GtCobolVariable >> potentialAccesses [
	| vars accesses |
	vars := self overlappingVariables.
	accesses := vars flatCollect: #incomingAccesses.
	accesses
		addAll: (vars flatCollect: [ :each | each conditions flatCollect: #incomingAccesses ]).
	^ accesses
]

{ #category : #accessing }
GtCobolVariable >> recordKeyInDescriptors [
	<MSEProperty: #recordKeyInDescriptors type: #GtCobolFileDescriptor opposite: #recordKey>
	<multivalued>
	^ recordKeyInDescriptors
]

{ #category : #accessing }
GtCobolVariable >> recordKeyInDescriptors: anObject [
	recordKeyInDescriptors value: anObject
]

{ #category : #accessing }
GtCobolVariable >> redefinedByVariables [
	<MSEProperty: #redefinedByVariables type: #GtCobolVariable opposite: #redefinesVariable>
	<multivalued>
	^ redefinedByVariables
]

{ #category : #accessing }
GtCobolVariable >> redefinedByVariables: anObject [
	redefinedByVariables := anObject
]

{ #category : #accessing }
GtCobolVariable >> redefinesVariable [
	<MSEProperty: #redefinesVariable type: #GtCobolVariable opposite: #redefinedByVariables>
	<container>
	^ redefinesVariable
]

{ #category : #accessing }
GtCobolVariable >> redefinesVariable: anObject [
	redefinesVariable := FMMultivalueLink
			on: self
			update: #redefinedByVariables
			from: self redefinesVariable
			to: anObject
]

{ #category : #accessing }
GtCobolVariable >> ridfldFileAccesses [
	<MSEProperty: #ridfldFileAccesses type: #GtCICSFileAccess opposite: #ridfld>
	^ ridfldFileAccesses
]

{ #category : #accessing }
GtCobolVariable >> ridfldFileAccesses: anObject [
	ridfldFileAccesses value: anObject
]

{ #category : #accessing }
GtCobolVariable >> totalByteSize [
	^ length * maxOccurrences
]

{ #category : #accessing }
GtCobolVariable >> xctlExpressions [
	<MSEProperty: #xctlExpressions type: #GtCobolCicsXctlExpression opposite: #commonAreaVariable>
	<multivalued>
	^ xctlExpressions
]

{ #category : #accessing }
GtCobolVariable >> xctlExpressions: anObject [
	xctlExpressions value: anObject
]
