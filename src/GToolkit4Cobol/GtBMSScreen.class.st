Class {
	#name : #GtBMSScreen,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'width',
		'height',
		'x',
		'y',
		'fields'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #private }
GtBMSScreen >> buildScreenString [
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
GtBMSScreen >> buildScreenText [
	| text |
	text := self buildScreenString asRopedText.
	text
		fontName: 'Andale Mono';
		foreground: Color white.
	fields do: [ :each | each applyAttributesOn: text ].
	^ text
]

{ #category : #accessing }
GtBMSScreen >> fields [
	<MSEProperty: #fields type: #GtBMSField opposite: #screen>
	<multivalued>
	^ fields
]

{ #category : #accessing }
GtBMSScreen >> fields: anObject [
	fields value: anObject
]

{ #category : #'as yet unclassified' }
GtBMSScreen >> gtFieldsFor: aView [
	<gtView>
	^ aView columnedList 
		title: 'Fields';
		items: [ self fields ];
		column: 'Name' text: #yourself;
		column: 'X' text: #x;
		column: 'Y' text: #y
]

{ #category : #'as yet unclassified' }
GtBMSScreen >> gtScreenFor: aView [
	<gtView>
	^ aView explicit
		priority: 1;
		title: 'Screen';
		stencil: [ | editor |
			editor := BrEditor new
					matchParent;
					background: Color black.
			editor editor text: self buildScreenText.
			editor ]
]

{ #category : #accessing }
GtBMSScreen >> height [
	^ height
]

{ #category : #accessing }
GtBMSScreen >> height: anObject [
	height := anObject
]

{ #category : #private }
GtBMSScreen >> indexForRow: row andColumn: column [
	^ (row - 1) * (width + 1) + column
]

{ #category : #initialization }
GtBMSScreen >> initialize [
	super initialize.
	fields := FMNullMultivalueLink
			on: self
			opposite: #screen:
			selector: #fields
]

{ #category : #accessing }
GtBMSScreen >> width [
	^ width
]

{ #category : #accessing }
GtBMSScreen >> width: anObject [
	width := anObject
]

{ #category : #accessing }
GtBMSScreen >> x [
	^ x
]

{ #category : #accessing }
GtBMSScreen >> x: anObject [
	x := anObject
]

{ #category : #accessing }
GtBMSScreen >> y [
	^ y
]

{ #category : #accessing }
GtBMSScreen >> y: anObject [
	y := anObject
]
