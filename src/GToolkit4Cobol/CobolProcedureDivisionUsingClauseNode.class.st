Class {
	#name : #CobolProcedureDivisionUsingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'optionals',
		'anies',
		'values'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureDivisionUsingClause: self
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> anies [
	^ anies
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> anies: anOrderedCollection [
	self setParents: self anies to: nil.
	anies := anOrderedCollection.
	self setParents: self anies to: self
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> compositeNodeVariables [
	^ #(#optionals #anies #values)
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolProcedureDivisionUsingClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	optionals := OrderedCollection new: 2.
	anies := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> optionals [
	^ optionals
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> optionals: anOrderedCollection [
	self setParents: self optionals to: nil.
	optionals := anOrderedCollection.
	self setParents: self optionals to: self
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> values [
	^ values
]

{ #category : #generated }
CobolProcedureDivisionUsingClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
