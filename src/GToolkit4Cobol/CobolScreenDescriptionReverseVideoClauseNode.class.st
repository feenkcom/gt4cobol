Class {
	#name : #CobolScreenDescriptionReverseVideoClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionReverseVideoClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionReverseVideoClause: self
]

{ #category : #generated }
CobolScreenDescriptionReverseVideoClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionReverseVideoClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionReverseVideoClauseNode >> tokenVariables [
	^ #(#keyword)
]
