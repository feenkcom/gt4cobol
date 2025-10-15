Class {
	#name : 'GtJCLDataDescriptor',
	#superclass : 'FAMIXNamedEntity',
	#instVars : [
		'step',
		'cicsFiles',
		'input',
		'assigns',
		'jclFileReferences',
		'inputOffset'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtJCLDataDescriptor >> assigns [
	<MSEProperty: #assigns type: #GtCobolAssignFile opposite: #jclDataDescriptor>
	<multivalued>
	^ assigns
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> assigns: anObject [
	assigns value: anObject
]

{ #category : 'initialization' }
GtJCLDataDescriptor >> initialize [
	super initialize.
	assigns := FMNullMultivalueLink
			on: self
			opposite: #jclDataDescriptor:
			selector: #assigns.
	jclFileReferences := FMNullMultivalueLink
			on: self
			opposite: #jclDataDescriptor:
			selector: #jclFileReferences
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> input [
	^ input
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> input: aString [
	input := aString
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> inputOffset [
	^ inputOffset
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> inputOffset: anObject [
	inputOffset := anObject
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> jclFileReferences [
	<MSEProperty: #jclFileReferences type: #GtJCLFileReference opposite: #jclDataDescriptor>
	<multivalued>
	^ jclFileReferences
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> jclFileReferences: anObject [
	jclFileReferences value: anObject
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> step [
	<MSEProperty: #step type: #GtJCLStep opposite: #dataDescriptors>
	<container>
	^ step
]

{ #category : 'accessing' }
GtJCLDataDescriptor >> step: anObject [
	step := FMMultivalueLink
			on: self
			update: #dataDescriptors
			from: self step
			to: anObject
]
