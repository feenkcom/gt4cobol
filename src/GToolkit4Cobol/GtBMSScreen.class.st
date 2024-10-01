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

{ #category : #accessing }
GtBMSScreen >> height [
	^ height
]

{ #category : #accessing }
GtBMSScreen >> height: anObject [
	height := anObject
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
