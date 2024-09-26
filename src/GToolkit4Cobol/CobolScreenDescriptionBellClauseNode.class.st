Class {
	#name : #CobolScreenDescriptionBellClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionBellClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionBellClause: self
]

{ #category : #generated }
CobolScreenDescriptionBellClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionBellClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionBellClauseNode >> tokenVariables [
	^ #(#keyword)
]
