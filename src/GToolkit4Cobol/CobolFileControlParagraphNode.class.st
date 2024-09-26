Class {
	#name : #CobolFileControlParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'periods',
		'clauses'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFileControlParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileControlParagraph: self
]

{ #category : #generated }
CobolFileControlParagraphNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolFileControlParagraphNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolFileControlParagraphNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #generated }
CobolFileControlParagraphNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #'generated-initialize-release' }
CobolFileControlParagraphNode >> initialize [
	super initialize.
	periods := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileControlParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolFileControlParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolFileControlParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolFileControlParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolFileControlParagraphNode >> tokenVariables [
	^ #(#keyword)
]
