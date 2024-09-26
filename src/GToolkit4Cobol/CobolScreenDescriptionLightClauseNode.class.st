Class {
	#name : #CobolScreenDescriptionLightClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionLightClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionLightClause: self
]

{ #category : #generated }
CobolScreenDescriptionLightClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionLightClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionLightClauseNode >> tokenVariables [
	^ #(#keyword)
]
