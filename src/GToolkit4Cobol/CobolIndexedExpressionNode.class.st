Class {
	#name : #CobolIndexedExpressionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'value',
		'index'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolIndexedExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexedExpression: self
]

{ #category : #generated }
CobolIndexedExpressionNode >> index [
	^ index
]

{ #category : #generated }
CobolIndexedExpressionNode >> index: aCobolLiteralNode [
	self index notNil ifTrue: [ self index parent: nil ].
	index := aCobolLiteralNode.
	self index notNil ifTrue: [ self index parent: self ]
]

{ #category : #generated }
CobolIndexedExpressionNode >> nodeVariables [
	^ #(#value #index)
]

{ #category : #generated }
CobolIndexedExpressionNode >> value [
	^ value
]

{ #category : #generated }
CobolIndexedExpressionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
