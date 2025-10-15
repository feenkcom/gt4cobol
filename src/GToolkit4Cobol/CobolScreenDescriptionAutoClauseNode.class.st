Class {
	#name : 'CobolScreenDescriptionAutoClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionAutoClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionAutoClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionAutoClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolScreenDescriptionAutoClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolScreenDescriptionAutoClauseNode >> tokenVariables [
	^ #(#keyword)
]
