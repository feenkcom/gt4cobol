Class {
	#name : #GtCobolFileDescriptor,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'program',
		'variables',
		'assigns',
		'fileStatusVariables',
		'recordKey'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolFileDescriptor >> assigns [
	<MSEProperty: #assigns type: #GtCobolAssignFile opposite: #fileDescriptor>
	<multivalued>
	^ assigns
]

{ #category : #accessing }
GtCobolFileDescriptor >> assigns: anObject [
	assigns value: anObject
]

{ #category : #accessing }
GtCobolFileDescriptor >> fileStatusVariables [
	<MSEProperty: #fileStatusVariables type: #GtCobolVariable opposite: #fileStatusInDescriptors>
	<multivalued>
	^ fileStatusVariables
]

{ #category : #accessing }
GtCobolFileDescriptor >> fileStatusVariables: anObject [
	fileStatusVariables value: anObject
]

{ #category : #'as yet unclassified' }
GtCobolFileDescriptor >> initialize [
	super initialize.
	variables := FMMultiMultivalueLink on: self opposite: #fileDescriptors.
	assigns := FMNullMultivalueLink
			on: self
			opposite: #fileDescriptor:
			selector: #assigns.
	fileStatusVariables := FMMultiMultivalueLink
			on: self
			opposite: #fileStatusInDescriptors
]

{ #category : #accessing }
GtCobolFileDescriptor >> program [
	<MSEProperty: #program type: #GtCobolProgram opposite: #fileDescriptors>
	<container>
	^ program
]

{ #category : #accessing }
GtCobolFileDescriptor >> program: anObject [
	program := FMMultivalueLink
			on: self
			update: #fileDescriptors
			from: self program
			to: anObject
]

{ #category : #accessing }
GtCobolFileDescriptor >> recordKey [
	<MSEProperty: #recordKey type: #GtCobolVariable opposite: #recordKeyInDescriptors>
	<multivalued>
	^ recordKey
]

{ #category : #accessing }
GtCobolFileDescriptor >> recordKey: anObject [
	recordKey := FMMultivalueLink
			on: self
			update: #recordKeyInDescriptors
			from: self recordKey
			to: anObject
]

{ #category : #accessing }
GtCobolFileDescriptor >> variables [
	<MSEProperty: #variables type: #GtCobolVariable opposite: #fileDescriptors>
	<multivalued>
	^ variables
]

{ #category : #accessing }
GtCobolFileDescriptor >> variables: anObject [
	variables value: anObject
]
