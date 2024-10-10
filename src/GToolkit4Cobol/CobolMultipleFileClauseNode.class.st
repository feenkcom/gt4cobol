Class {
	#name : #CobolMultipleFileClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'fileNames',
		'positions'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolMultipleFileClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMultipleFileClause: self
]

{ #category : #generated }
CobolMultipleFileClauseNode >> compositeNodeVariables [
	^ #(#fileNames #positions)
]

{ #category : #generated }
CobolMultipleFileClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMultipleFileClauseNode >> fileNames [
	^ fileNames
]

{ #category : #generated }
CobolMultipleFileClauseNode >> fileNames: anOrderedCollection [
	self setParents: self fileNames to: nil.
	fileNames := anOrderedCollection.
	self setParents: self fileNames to: self
]

{ #category : #'generated-initialize-release' }
CobolMultipleFileClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileNames := OrderedCollection new: 2.
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
