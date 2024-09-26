Class {
	#name : #CobolIdentifierNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'name'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]

{ #category : #generated }
CobolIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CobolIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CobolIdentifierNode >> tokenVariables [
	^ #(#name)
]
