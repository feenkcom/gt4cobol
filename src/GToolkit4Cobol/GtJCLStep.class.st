Class {
	#name : #GtJCLStep,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'job',
		'program',
		'dataDescriptors'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtJCLStep >> dataDescriptors [
	<MSEProperty: #dataDescriptors type: #GtJCLDataDescriptor opposite: #step>
	<multivalued>
	^ dataDescriptors
]

{ #category : #accessing }
GtJCLStep >> dataDescriptors: anObject [
	dataDescriptors value: anObject
]

{ #category : #'as yet unclassified' }
GtJCLStep >> initialize [
	super initialize.
	dataDescriptors := FMNullMultivalueLink
			on: self
			opposite: #step:
			selector: #dataDescriptors
]

{ #category : #accessing }
GtJCLStep >> job [
	<MSEProperty: #job type: #GtJCLJob opposite: #steps>
	<container>
	^ job
]

{ #category : #accessing }
GtJCLStep >> job: anObject [
	job := FMMultivalueLink
			on: self
			update: #steps
			from: self job
			to: anObject
]

{ #category : #accessing }
GtJCLStep >> program [
	<MSEProperty: #program type: #GtCobolProgram opposite: #jclSteps>
	<container>
	^ program
]

{ #category : #accessing }
GtJCLStep >> program: anObject [
	program := FMMultivalueLink
			on: self
			update: #jclSteps
			from: self program
			to: anObject
]
