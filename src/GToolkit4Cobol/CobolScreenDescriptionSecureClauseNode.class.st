Class {
	#name : #CobolScreenDescriptionSecureClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionSecureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionSecureClause: self
]

{ #category : #generated }
CobolScreenDescriptionSecureClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionSecureClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionSecureClauseNode >> tokenVariables [
	^ #(#keyword)
]
