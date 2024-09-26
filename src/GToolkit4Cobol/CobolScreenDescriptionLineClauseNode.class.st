Class {
	#name : #CobolScreenDescriptionLineClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'lineNumber',
		'op'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionLineClause: self
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionLineClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> lineNumber [
	^ lineNumber
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> lineNumber: aCobolExpressionNode [
	self lineNumber notNil ifTrue: [ self lineNumber parent: nil ].
	lineNumber := aCobolExpressionNode.
	self lineNumber notNil ifTrue: [ self lineNumber parent: self ]
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> nodeVariables [
	^ #(#lineNumber)
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> op [
	^ op
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionLineClauseNode >> tokenVariables [
	^ #(#op)
]
