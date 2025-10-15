Class {
	#name : 'GtJCLJob',
	#superclass : 'FAMIXNamedEntity',
	#instVars : [
		'steps'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
GtJCLJob >> gtStepsFor: aView [
	<gtView>
	^ aView list
		title: 'Steps';
		items: [ self steps ]
]

{ #category : 'initialization' }
GtJCLJob >> initialize [
	super initialize.
	steps := FMNullMultivalueLink
			on: self
			opposite: #job:
			selector: #steps
]

{ #category : 'accessing' }
GtJCLJob >> steps [
	<MSEProperty: #steps type: #GtJCLStep opposite: #job>
	<multivalued>
	^ steps
]

{ #category : 'accessing' }
GtJCLJob >> steps: anObject [
	steps value: anObject
]
