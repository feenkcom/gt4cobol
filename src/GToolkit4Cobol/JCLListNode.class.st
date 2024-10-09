Class {
	#name : #JCLListNode,
	#superclass : #JCLValueNode,
	#instVars : [
		'left',
		'right',
		'values',
		'commas',
		'parameters'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitList: self
]

{ #category : #generated }
JCLListNode >> commas [
	^ commas
]

{ #category : #generated }
JCLListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
JCLListNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
JCLListNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
JCLListNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : #generated }
JCLListNode >> left [
	^ left
]

{ #category : #generated }
JCLListNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
JCLListNode >> otherVariables [
	^ #(#parameters)
]

{ #category : #generated }
JCLListNode >> parameters [
	^ parameters
]

{ #category : #generated }
JCLListNode >> parameters: anOrderedCollection [
	self setParent: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParent: self parameters to: self
]

{ #category : #generated }
JCLListNode >> right [
	^ right
]

{ #category : #generated }
JCLListNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
JCLListNode >> tokenVariables [
	^ #(#left #right)
]

{ #category : #generated }
JCLListNode >> values [
	^ values
]

{ #category : #generated }
JCLListNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
