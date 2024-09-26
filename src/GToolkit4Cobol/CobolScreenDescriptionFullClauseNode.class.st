Class {
	#name : #CobolScreenDescriptionFullClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionFullClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionFullClause: self
]

{ #category : #generated }
CobolScreenDescriptionFullClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionFullClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionFullClauseNode >> tokenVariables [
	^ #(#keyword)
]
