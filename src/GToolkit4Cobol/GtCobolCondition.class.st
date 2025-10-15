Class {
	#name : 'GtCobolCondition',
	#superclass : 'FAMIXGlobalVariable',
	#instVars : [
		'variable'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
GtCobolCondition >> gtPotentialAccessesFor: aView [
	<gtView>
	^ aView forward
		title: 'Accesses';
		object: [ self potentialAccesses ];
		view: #gtItemsFor:
]

{ #category : 'as yet unclassified' }
GtCobolCondition >> gtPotentialWriteAccessesFor: aView [
	<gtView>
	^ aView forward
		title: 'Write accesses';
		object: [ self potentialAccesses select: #isWrite ];
		view: #gtItemsFor:
]

{ #category : 'as yet unclassified' }
GtCobolCondition >> potentialAccesses [
	^ variable potentialAccesses
]

{ #category : 'accessing' }
GtCobolCondition >> variable [
	<MSEProperty: #variable type: #GtCobolVariable opposite: #conditions>
	<container>
	^ variable
]

{ #category : 'accessing' }
GtCobolCondition >> variable: anObject [
	variable := FMMultivalueLink
			on: self
			update: #conditions
			from: self variable
			to: anObject
]
