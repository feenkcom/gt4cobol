Class {
	#name : #JCLStatementNode,
	#superclass : #JCLProgramNode,
	#instVars : [
		'slashes',
		'operation',
		'values',
		'commas',
		'parameters',
		'name'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]

{ #category : #generated }
JCLStatementNode >> commas [
	^ commas
]

{ #category : #generated }
JCLStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JCLStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
JCLStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JCLStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : #generated }
JCLStatementNode >> name [
	^ name
]

{ #category : #generated }
JCLStatementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
JCLStatementNode >> operation [
	^ operation
]

{ #category : #generated }
JCLStatementNode >> operation: aSmaCCToken [
	operation := aSmaCCToken
]

{ #category : #generated }
JCLStatementNode >> otherVariables [
	^ #(#parameters)
]

{ #category : #generated }
JCLStatementNode >> parameters [
	^ parameters
]

{ #category : #generated }
JCLStatementNode >> parameters: anOrderedCollection [
	self setParent: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParent: self parameters to: self
]

{ #category : #generated }
JCLStatementNode >> slashes [
	^ slashes
]

{ #category : #generated }
JCLStatementNode >> slashes: aSmaCCToken [
	slashes := aSmaCCToken
]

{ #category : #generated }
JCLStatementNode >> tokenVariables [
	^ #(#slashes #operation #name)
]

{ #category : #generated }
JCLStatementNode >> values [
	^ values
]

{ #category : #generated }
JCLStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
