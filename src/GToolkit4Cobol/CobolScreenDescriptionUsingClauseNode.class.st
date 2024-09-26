Class {
	#name : #CobolScreenDescriptionUsingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'using'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionUsingClause: self
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> nodeVariables [
	^ #(#using)
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> using [
	^ using
]

{ #category : #generated }
CobolScreenDescriptionUsingClauseNode >> using: aCobolExpressionNode [
	self using notNil ifTrue: [ self using parent: nil ].
	using := aCobolExpressionNode.
	self using notNil ifTrue: [ self using parent: self ]
]
