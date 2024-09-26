Class {
	#name : #CobolScreenDescriptionColumnClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'columnNumber',
		'op'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionColumnClause: self
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> columnNumber [
	^ columnNumber
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> columnNumber: aCobolExpressionNode [
	self columnNumber notNil ifTrue: [ self columnNumber parent: nil ].
	columnNumber := aCobolExpressionNode.
	self columnNumber notNil ifTrue: [ self columnNumber parent: self ]
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionColumnClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> nodeVariables [
	^ #(#columnNumber)
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> op [
	^ op
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionColumnClauseNode >> tokenVariables [
	^ #(#op)
]
