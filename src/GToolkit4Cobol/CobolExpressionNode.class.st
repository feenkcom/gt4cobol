Class {
	#name : #CobolExpressionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'leftParens',
		'rightParens'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
CobolExpressionNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CobolExpressionNode >> initialize [
	super initialize.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExpressionNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CobolExpressionNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CobolExpressionNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CobolExpressionNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
