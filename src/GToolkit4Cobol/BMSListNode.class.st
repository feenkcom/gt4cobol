Class {
	#name : #BMSListNode,
	#superclass : #BMSValueNode,
	#instVars : [
		'leftParen',
		'rightParen',
		'values',
		'commas'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitList: self
]

{ #category : #generated }
BMSListNode >> commas [
	^ commas
]

{ #category : #generated }
BMSListNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
BMSListNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
BMSListNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
BMSListNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
BMSListNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
BMSListNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #accessing }
BMSListNode >> literalValue [
	^ values collect: #literalValue
]

{ #category : #generated }
BMSListNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
BMSListNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
BMSListNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
BMSListNode >> values [
	^ values
]

{ #category : #generated }
BMSListNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
