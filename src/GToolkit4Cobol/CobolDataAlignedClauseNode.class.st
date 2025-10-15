Class {
	#name : 'CobolDataAlignedClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataAlignedClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataAlignedClause: self
]

{ #category : 'generated' }
CobolDataAlignedClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolDataAlignedClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolDataAlignedClauseNode >> tokenVariables [
	^ #(#keyword)
]
