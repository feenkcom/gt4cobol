Class {
	#name : #CSDFileNode,
	#superclass : #CSDProgramNode,
	#instVars : [
		'statements'
	],
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
CSDFileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #'generated-initialize-release' }
CSDFileNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CSDFileNode >> statements [
	^ statements
]

{ #category : #generated }
CSDFileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
