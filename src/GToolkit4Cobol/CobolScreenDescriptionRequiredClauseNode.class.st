Class {
	#name : #CobolScreenDescriptionRequiredClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionRequiredClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionRequiredClause: self
]

{ #category : #generated }
CobolScreenDescriptionRequiredClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionRequiredClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionRequiredClauseNode >> tokenVariables [
	^ #(#keyword)
]
