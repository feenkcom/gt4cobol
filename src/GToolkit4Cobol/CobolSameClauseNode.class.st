Class {
	#name : #CobolSameClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'fileNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSameClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSameClause: self
]

{ #category : #generated }
CobolSameClauseNode >> compositeNodeVariables [
	^ #(#fileNames)
]

{ #category : #generated }
CobolSameClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSameClauseNode >> fileNames [
	^ fileNames
]

{ #category : #generated }
CobolSameClauseNode >> fileNames: anOrderedCollection [
	self setParents: self fileNames to: nil.
	fileNames := anOrderedCollection.
	self setParents: self fileNames to: self
]

{ #category : #'generated-initialize-release' }
CobolSameClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSameClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSameClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
