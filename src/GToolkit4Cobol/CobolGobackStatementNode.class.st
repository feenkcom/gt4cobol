Class {
	#name : 'CobolGobackStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolGobackStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGobackStatement: self
]

{ #category : 'generated' }
CobolGobackStatementNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolGobackStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolGobackStatementNode >> tokenVariables [
	^ #(#keyword)
]
