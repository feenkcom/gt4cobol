Class {
	#name : #CobolScreenDescriptionGridClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionGridClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionGridClause: self
]

{ #category : #generated }
CobolScreenDescriptionGridClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionGridClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionGridClauseNode >> tokenVariables [
	^ #(#keyword)
]
