Class {
	#name : #GtBMSField,
	#superclass : #FAMIXStructuralEntity,
	#instVars : [
		'x',
		'y',
		'length',
		'screen',
		'color',
		'initialValue'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtBMSField >> color [
	^ color
]

{ #category : #accessing }
GtBMSField >> color: anObject [
	color := anObject
]

{ #category : #accessing }
GtBMSField >> initialValue [
	^ initialValue
]

{ #category : #accessing }
GtBMSField >> initialValue: anObject [
	initialValue := anObject
]

{ #category : #accessing }
GtBMSField >> length [
	^ length
]

{ #category : #accessing }
GtBMSField >> length: anObject [
	length := anObject
]

{ #category : #accessing }
GtBMSField >> screen [
	<MSEProperty: #screen type: #GtBMSScreen opposite: #fields>
	<container>
	^ screen
]

{ #category : #accessing }
GtBMSField >> screen: anObject [
	screen := FMMultivalueLink
			on: self
			update: #fields
			from: self screen
			to: anObject
]

{ #category : #accessing }
GtBMSField >> x [
	^ x
]

{ #category : #accessing }
GtBMSField >> x: anObject [
	x := anObject
]

{ #category : #accessing }
GtBMSField >> y [
	^ y
]

{ #category : #accessing }
GtBMSField >> y: anObject [
	y := anObject
]
