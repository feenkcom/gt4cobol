Class {
	#name : #CobolDataTypeClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'leftParen',
		'cardinality',
		'rightParen'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataTypeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataTypeClause: self
]

{ #category : #generated }
CobolDataTypeClauseNode >> cardinality [
	^ cardinality
]

{ #category : #generated }
CobolDataTypeClauseNode >> cardinality: aCobolExpressionNode [
	self cardinality notNil ifTrue: [ self cardinality parent: nil ].
	cardinality := aCobolExpressionNode.
	self cardinality notNil ifTrue: [ self cardinality parent: self ]
]

{ #category : #generated }
CobolDataTypeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataTypeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataTypeClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataTypeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataTypeClauseNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CobolDataTypeClauseNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CobolDataTypeClauseNode >> nodeVariables [
	^ #(#cardinality)
]

{ #category : #generated }
CobolDataTypeClauseNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CobolDataTypeClauseNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CobolDataTypeClauseNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
