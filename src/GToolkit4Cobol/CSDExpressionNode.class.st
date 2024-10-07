Class {
	#name : #CSDExpressionNode,
	#superclass : #CSDProgramNode,
	#instVars : [
		'token'
	],
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExpression: self
]

{ #category : #generated }
CSDExpressionNode >> token [
	^ token
]

{ #category : #generated }
CSDExpressionNode >> token: aSmaCCToken [
	token := aSmaCCToken
]

{ #category : #generated }
CSDExpressionNode >> tokenVariables [
	^ #(#token)
]
