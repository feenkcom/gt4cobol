Class {
	#name : #CobolScreenDescriptionAutoClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionAutoClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionAutoClause: self
]

{ #category : #generated }
CobolScreenDescriptionAutoClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionAutoClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionAutoClauseNode >> tokenVariables [
	^ #(#keyword)
]
