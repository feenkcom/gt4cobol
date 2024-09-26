Class {
	#name : #CobolCurrencySignClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'values'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCurrencySignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCurrencySignClause: self
]

{ #category : #generated }
CobolCurrencySignClauseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CobolCurrencySignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolCurrencySignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCurrencySignClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCurrencySignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCurrencySignClauseNode >> values [
	^ values
]

{ #category : #generated }
CobolCurrencySignClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
