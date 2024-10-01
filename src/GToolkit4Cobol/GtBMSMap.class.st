Class {
	#name : #GtBMSMap,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'width',
		'height',
		'x',
		'y',
		'fields',
		'mapExpressions'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #private }
GtBMSMap >> buildScreenString [
	| screen |
	screen := SmaCCString
			on: (String
					streamContents: [ :stream | 
						height
							timesRepeat: [ stream
									next: width put: $ ;
									lf ] ]).
	fields do: [ :each | each applyInitialValueOn: screen ].
	^ screen asString
]

{ #category : #private }
GtBMSMap >> buildScreenText [
	| text |
	text := self buildScreenString asRopedText.
	text
		fontName: 'Andale Mono';
		foreground: Color white.
	fields do: [ :each | each applyAttributesOn: text ].
	^ text
]

{ #category : #accessing }
GtBMSMap >> fields [
	<MSEProperty: #fields type: #GtBMSField opposite: #map>
	<multivalued>
	^ fields
]

{ #category : #accessing }
GtBMSMap >> fields: anObject [
	fields value: anObject
]

{ #category : #'as yet unclassified' }
GtBMSMap >> gtFieldsFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Fields';
		items: [ self fields ];
		column: 'Name' text: #yourself;
		column: 'X' text: #x;
		column: 'Y' text: #y
]

{ #category : #'as yet unclassified' }
GtBMSMap >> gtProgramsAndScreenFor: aView [
	<gtView>
	| editor |
	^ aView mondrian
		title: 'Programs & Screen';
		painting: [ :m | 
			m nodes
				stencil: [ editor := BrEditor new
							fitContent;
							background: Color black.
					editor editor text: self buildScreenText.
				
					editor asScalableElement size: 300 @ 200 ];
				with: {self}.
			m nodes
				stencil: [ :program | 
					BrLabel new
						text: program name;
						aptitude: BrGlamorousLabelAptitude ];
				with: (mapExpressions collectAsSet: #program).
			m edges
				stencil: [ :node | 
					BlParabollaArcElement new
						zIndex: 0;
						curvatureFraction: 0.3;
						border: (BlBorder paint: Color lightGray);
						toHead: (BlArrowheadSimpleArrow new border: (BlBorder paint: Color lightGray)) ];
				connect: mapExpressions
					from: #from
					to: #to.
			m layout dominanceTree
				levelDistance: 30;
				nodeDistance: 30 ]
]

{ #category : #'as yet unclassified' }
GtBMSMap >> gtScreenFor: aView [
	<gtView>
	^ aView explicit
		priority: 1;
		title: 'Screen';
		stencil: [ | editor |
			editor := BrEditor new
					fitContent;
					background: Color black.
			editor editor text: self buildScreenText.
			editor margin: (BlInsets all: 10).
			editor ]
]

{ #category : #accessing }
GtBMSMap >> height [
	^ height
]

{ #category : #accessing }
GtBMSMap >> height: anObject [
	height := anObject
]

{ #category : #private }
GtBMSMap >> indexForRow: row andColumn: column [
	^ (row - 1) * (width + 1) + column
]

{ #category : #initialization }
GtBMSMap >> initialize [
	super initialize.
	fields := FMNullMultivalueLink
			on: self
			opposite: #map:
			selector: #fields.
	mapExpressions := FMNullMultivalueLink
			on: self
			opposite: #map:
			selector: #mapExpressions
]

{ #category : #accessing }
GtBMSMap >> mapExpressions [
	<MSEProperty: #mapExpressions type: #GtBMSMapExpression opposite: #map>
	<multivalued>
	^ mapExpressions
]

{ #category : #accessing }
GtBMSMap >> mapExpressions: anObject [
	mapExpressions value: anObject
]

{ #category : #accessing }
GtBMSMap >> width [
	^ width
]

{ #category : #accessing }
GtBMSMap >> width: anObject [
	width := anObject
]

{ #category : #accessing }
GtBMSMap >> x [
	^ x
]

{ #category : #accessing }
GtBMSMap >> x: anObject [
	x := anObject
]

{ #category : #accessing }
GtBMSMap >> y [
	^ y
]

{ #category : #accessing }
GtBMSMap >> y: anObject [
	y := anObject
]