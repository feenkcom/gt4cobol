Class {
	#name : #GtBMSMapSet,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'maps'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtBMSMapSet >> gtScreenFor: aView [
	<gtView>
	maps size = 1 ifFalse: [ ^ aView empty ].
	^ aView forward
		title: 'Screen';
		object: [ maps first ];
		view: #gtScreenFor:
]

{ #category : #initialization }
GtBMSMapSet >> initialize [
	super initialize.
	maps := FMNullMultivalueLink
			on: self
			opposite: #mapSet:
			selector: #maps
]

{ #category : #accessing }
GtBMSMapSet >> maps [
	<MSEProperty: #maps type: #GtBMSMap opposite: #mapSet>
	<multivalued>
	^ maps
]

{ #category : #accessing }
GtBMSMapSet >> maps: anObject [
	maps := anObject
]
