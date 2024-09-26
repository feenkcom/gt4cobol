Class {
	#name : #CobolScreenDescriptionUnderlineClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionUnderlineClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionUnderlineClause: self
]

{ #category : #generated }
CobolScreenDescriptionUnderlineClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionUnderlineClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionUnderlineClauseNode >> tokenVariables [
	^ #(#keyword)
]
