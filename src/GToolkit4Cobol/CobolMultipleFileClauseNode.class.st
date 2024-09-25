Class {
	#name : #CobolMultipleFileClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'filenames',
		'positions'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolMultipleFileClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMultipleFileClause: self
]

{ #category : #generated }
CobolMultipleFileClauseNode >> compositeNodeVariables [
	^ #(#filenames #positions)
]

{ #category : #generated }
CobolMultipleFileClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMultipleFileClauseNode >> filenames [
	^ filenames
]

{ #category : #generated }
CobolMultipleFileClauseNode >> filenames: anOrderedCollection [
	self setParents: self filenames to: nil.
	filenames := anOrderedCollection.
	self setParents: self filenames to: self
]

{ #category : #'generated-initialize-release' }
CobolMultipleFileClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
	positions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMultipleFileClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMultipleFileClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMultipleFileClauseNode >> positions [
	^ positions
]

{ #category : #generated }
CobolMultipleFileClauseNode >> positions: anOrderedCollection [
	self setParents: self positions to: nil.
	positions := anOrderedCollection.
	self setParents: self positions to: self
]
