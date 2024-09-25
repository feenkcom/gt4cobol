Class {
	#name : #CobolDataIntegerStringClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataIntegerStringClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataIntegerStringClause: self
]

{ #category : #generated }
CobolDataIntegerStringClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDataIntegerStringClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDataIntegerStringClauseNode >> tokenVariables [
	^ #(#keyword)
]
