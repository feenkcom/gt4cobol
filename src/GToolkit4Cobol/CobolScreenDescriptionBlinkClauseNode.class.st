Class {
	#name : 'CobolScreenDescriptionBlinkClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionBlinkClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionBlinkClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionBlinkClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolScreenDescriptionBlinkClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolScreenDescriptionBlinkClauseNode >> tokenVariables [
	^ #(#keyword)
]
