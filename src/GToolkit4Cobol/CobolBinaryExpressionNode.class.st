Class {
	#name : #CobolBinaryExpressionNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'left',
		'op',
		'right'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolBinaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBinaryExpression: self
]

{ #category : #generated }
CobolBinaryExpressionNode >> left [
	^ left
]

{ #category : #generated }
CobolBinaryExpressionNode >> left: aCobolExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aCobolExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
CobolBinaryExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
CobolBinaryExpressionNode >> op [
	^ op
]

{ #category : #generated }
CobolBinaryExpressionNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
CobolBinaryExpressionNode >> right [
	^ right
]

{ #category : #generated }
CobolBinaryExpressionNode >> right: aCobolProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aCobolProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CobolBinaryExpressionNode >> tokenVariables [
	^ #(#op)
]
