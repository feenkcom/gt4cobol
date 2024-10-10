Class {
	#name : #GtCobolFileDescriptor,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'program',
		'dataSetNames',
		'variables',
		'jclDataDescriptors'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolFileDescriptor >> dataSetNames [
	^ dataSetNames
]

{ #category : #accessing }
GtCobolFileDescriptor >> dataSetNames: anObject [
	dataSetNames := anObject
]

{ #category : #'as yet unclassified' }
GtCobolFileDescriptor >> initialize [
	super initialize.
	dataSetNames := Set new.
	variables := FMMultiMultivalueLink on: self opposite: #fileDescriptors.
	jclDataDescriptors := FMMultiMultivalueLink on: self opposite: #fileDescriptors
]

{ #category : #accessing }
GtCobolFileDescriptor >> jclDataDescriptors [
	<MSEProperty: #jclDataDescriptors type: #GtJCLDataDescriptor opposite: #fileDescriptors>
	<multivalued>
	^ jclDataDescriptors
]

{ #category : #accessing }
GtCobolFileDescriptor >> jclDataDescriptors: anObject [
	jclDataDescriptors value: anObject
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
GtCobolFileDescriptor >> variables [
	<MSEProperty: #variables type: #GtCobolVariable opposite: #fileDescriptors>
	<multivalued>
	^ variables
]

{ #category : #accessing }
GtCobolFileDescriptor >> variables: anObject [
	variables value: anObject
]
