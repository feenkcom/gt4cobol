Class {
	#name : #GtJCLJob,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'steps'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #initialization }
GtJCLJob >> initialize [
	super initialize.
	steps := FMNullMultivalueLink
			on: self
			opposite: #job:
			selector: #steps
]

{ #category : #accessing }
GtJCLJob >> steps [
	<MSEProperty: #steps type: #GtJCLStep opposite: #job>
	<multivalued>
	^ steps
]

{ #category : #accessing }
GtJCLJob >> steps: anObject [
	steps value: anObject
]