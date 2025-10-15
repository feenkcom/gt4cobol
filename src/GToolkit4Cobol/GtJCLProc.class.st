Class {
	#name : 'GtJCLProc',
	#superclass : 'FAMIXNamedEntity',
	#instVars : [
		'steps',
		'calledBySteps'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtJCLProc >> calledBySteps [
	<MSEProperty: #calledBySteps type: #GtJCLStep opposite: #calledProc>
	<multivalued>
	^ calledBySteps
]

{ #category : 'accessing' }
GtJCLProc >> calledBySteps: anObject [
	calledBySteps value: anObject
]

{ #category : 'accessing' }
GtJCLProc >> gtStepsFor: aView [
	<gtView>
	^ aView list
		title: 'Steps';
		items: [ self steps ]
]

{ #category : 'initialization' }
GtJCLProc >> initialize [
	super initialize.
	steps := FMNullMultivalueLink
			on: self
			opposite: #proc:
			selector: #steps.
	calledBySteps := FMNullMultivalueLink
			on: self
			opposite: #calledProc:
			selector: #calledBySteps
]

{ #category : 'accessing' }
GtJCLProc >> steps [
	<MSEProperty: #steps type: #GtJCLStep opposite: #proc>
	<multivalued>
	^ steps
]

{ #category : 'accessing' }
GtJCLProc >> steps: anObject [
	steps value: anObject
]
