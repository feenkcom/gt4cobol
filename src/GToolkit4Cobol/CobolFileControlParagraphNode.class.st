Class {
	#name : #CobolFileControlParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'entries',
		'periods'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFileControlParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileControlParagraph: self
]

{ #category : #generated }
CobolFileControlParagraphNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : #generated }
CobolFileControlParagraphNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #generated }
CobolFileControlParagraphNode >> entries [
	^ entries
]

{ #category : #generated }
CobolFileControlParagraphNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolFileControlParagraphNode >> initialize [
	super initialize.
	entries := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
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
