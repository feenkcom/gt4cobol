Class {
	#name : #CobolSubscriptsNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'left',
		'subscripts',
		'commas',
		'right'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSubscriptsNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubscripts: self
]

{ #category : #generated }
CobolSubscriptsNode >> commas [
	^ commas
]

{ #category : #generated }
CobolSubscriptsNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CobolSubscriptsNode >> compositeNodeVariables [
	^ #(#subscripts)
]

{ #category : #generated }
CobolSubscriptsNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
CobolSubscriptsNode >> initialize [
	super initialize.
	subscripts := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSubscriptsNode >> left [
	^ left
]

{ #category : #generated }
CobolSubscriptsNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CobolSubscriptsNode >> right [
	^ right
]

{ #category : #generated }
CobolSubscriptsNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CobolSubscriptsNode >> subscripts [
	^ subscripts
]

{ #category : #generated }
CobolSubscriptsNode >> subscripts: anOrderedCollection [
	self setParents: self subscripts to: nil.
	subscripts := anOrderedCollection.
	self setParents: self subscripts to: self
]

{ #category : #generated }
CobolSubscriptsNode >> tokenVariables [
	^ #(#left #right)
]
