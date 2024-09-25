Class {
	#name : #CobolPerformVaryingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'performs',
		'performFroms',
		'bies',
		'untils'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolPerformVaryingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPerformVaryingClause: self
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> bies [
	^ bies
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> bies: anOrderedCollection [
	self setParents: self bies to: nil.
	bies := anOrderedCollection.
	self setParents: self bies to: self
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> compositeNodeVariables [
	^ #(#performs #performFroms #bies #untils)
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolPerformVaryingClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	performs := OrderedCollection new: 2.
	performFroms := OrderedCollection new: 2.
	bies := OrderedCollection new: 2.
	untils := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> performFroms [
	^ performFroms
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> performFroms: anOrderedCollection [
	self setParents: self performFroms to: nil.
	performFroms := anOrderedCollection.
	self setParents: self performFroms to: self
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> performs [
	^ performs
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> performs: anOrderedCollection [
	self setParents: self performs to: nil.
	performs := anOrderedCollection.
	self setParents: self performs to: self
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> untils [
	^ untils
]

{ #category : #generated }
CobolPerformVaryingClauseNode >> untils: anOrderedCollection [
	self setParents: self untils to: nil.
	untils := anOrderedCollection.
	self setParents: self untils to: self
]
