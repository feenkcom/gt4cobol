Class {
	#name : #CobolContinueStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolContinueStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitContinueStatement: self
]

{ #category : #generated }
CobolContinueStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolContinueStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolContinueStatementNode >> tokenVariables [
	^ #(#keyword)
]
