Class {
	#name : #GtJCLDataDescriptor,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'step',
		'fileDescriptors',
		'cicsFiles',
		'input'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtJCLDataDescriptor >> cicsFiles [
	<MSEProperty: #cicsFiles type: #GtCICSFile opposite: #jclDataDescriptors>
	<multivalued>
	^ cicsFiles
]

{ #category : #accessing }
GtJCLDataDescriptor >> cicsFiles: anObject [
	cicsFiles value: anObject
]

{ #category : #accessing }
GtJCLDataDescriptor >> fileDescriptors [
	<MSEProperty: #fileDescriptors type: #GtCobolFileDescriptor opposite: #jclDataDescriptors>
	<multivalued>
	^ fileDescriptors
]

{ #category : #accessing }
GtJCLDataDescriptor >> fileDescriptors: anObject [
	fileDescriptors value: anObject
]

{ #category : #initialization }
GtJCLDataDescriptor >> initialize [
	super initialize.
	fileDescriptors := FMMultiMultivalueLink on: self opposite: #jclDataDescriptors.
	cicsFiles := FMMultiMultivalueLink on: self opposite: #jclDataDescriptors
]

{ #category : #accessing }
GtJCLDataDescriptor >> input [
	^ input
]

{ #category : #accessing }
GtJCLDataDescriptor >> input: aString [
	input := aString
]

{ #category : #accessing }
GtJCLDataDescriptor >> step [
	<MSEProperty: #step type: #GtJCLStep opposite: #dataDescriptors>
	<container>
	^ step
]

{ #category : #accessing }
GtJCLDataDescriptor >> step: anObject [
	step := FMMultivalueLink
			on: self
			update: #dataDescriptors
			from: self step
			to: anObject
]
