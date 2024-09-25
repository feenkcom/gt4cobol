Class {
	#name : #CobolLiteralNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'value'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]

{ #category : #generated }
CobolLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
CobolLiteralNode >> value [
	^ value
]

{ #category : #generated }
CobolLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
