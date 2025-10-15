Class {
	#name : 'CobolScreenDescriptionZeroFillClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionZeroFillClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionZeroFillClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionZeroFillClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolScreenDescriptionZeroFillClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolScreenDescriptionZeroFillClauseNode >> tokenVariables [
	^ #(#keyword)
]
