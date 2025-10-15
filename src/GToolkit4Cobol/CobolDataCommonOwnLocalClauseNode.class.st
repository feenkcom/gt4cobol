Class {
	#name : 'CobolDataCommonOwnLocalClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataCommonOwnLocalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataCommonOwnLocalClause: self
]

{ #category : 'generated' }
CobolDataCommonOwnLocalClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolDataCommonOwnLocalClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolDataCommonOwnLocalClauseNode >> tokenVariables [
	^ #(#keyword)
]
