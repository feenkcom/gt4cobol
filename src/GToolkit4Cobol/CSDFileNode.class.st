Class {
	#name : 'CSDFileNode',
	#superclass : 'CSDProgramNode',
	#instVars : [
		'definitions'
	],
	#category : 'GToolkit4Cobol-CSD-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'CSD-Parser'
}

{ #category : 'generated' }
CSDFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : 'generated' }
CSDFileNode >> compositeNodeVariables [
	^ #(#definitions)
]

{ #category : 'generated' }
CSDFileNode >> definitions [
	^ definitions
]

{ #category : 'generated' }
CSDFileNode >> definitions: anOrderedCollection [
	self setParents: self definitions to: nil.
	definitions := anOrderedCollection.
	self setParents: self definitions to: self
]

{ #category : 'accessing' }
CSDFileNode >> groups [
	^ self
		attributeNamed: #groups
		ifAbsentPut: [ self definitions groupedBy: [ :each | each name asUppercase ] ]
]

{ #category : 'generated-initialize-release' }
CSDFileNode >> initialize [
	super initialize.
	definitions := OrderedCollection new: 2.
]
