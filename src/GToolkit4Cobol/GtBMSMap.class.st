Class {
	#name : #GtBMSMap,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'width',
		'height',
		'x',
		'y',
		'fields',
		'mapExpressions',
		'mapSet'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #views }
GtBMSMap >> asElement [
	| editor |
	editor := BrEditor new
			fitContent;
			background: Color black.
	editor editor text: self buildScreenText.
	editor margin: (BlInsets all: 10).
	^ editor
]

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

{ #category : #views }
GtBMSMap >> gtFamixExpanderView [
	^ self gtScreenFor: GtPhlowView new
]

{ #category : #views }
GtBMSMap >> gtFieldsFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Fields';
		items: [ self fields ];
		column: 'Name' text: #yourself;
		column: 'X' text: #x;
		column: 'Y' text: #y
]

{ #category : #views }
GtBMSMap >> gtMapExpressionsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Map expressions';
		items: [ self mapExpressions ];
		column: 'From' text: #from;
		column: 'To' text: #to
]

{ #category : #views }
GtBMSMap >> gtProgramsAndScreenFor: aView [
	<gtView>
	^ aView mondrian
		title: 'Programs & screens';
		painting: [ :m | GtCobolProgram paintProgramDependenciesWith: m from: {self} ]
]

{ #category : #views }
GtBMSMap >> gtScreenFor: aView [
	<gtView>
	^ aView explicit
		priority: -1;
		title: 'Screen';
		stencil: [ self asElement ]
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
GtBMSMap >> mapSet [
	<MSEProperty: #mapSet type: #GtBMSMapSet opposite: #maps>
	<container>
	^ mapSet
]

{ #category : #accessing }
GtBMSMap >> mapSet: anObject [
	mapSet := FMMultivalueLink
			on: self
			update: #maps
			from: self mapSet
			to: anObject
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
