Class {
	#name : #CobolSameClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'filenames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSameClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSameClause: self
]

{ #category : #generated }
CobolSameClauseNode >> compositeNodeVariables [
	^ #(#filenames)
]

{ #category : #generated }
CobolSameClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSameClauseNode >> filenames [
	^ filenames
]

{ #category : #generated }
CobolSameClauseNode >> filenames: anOrderedCollection [
	self setParents: self filenames to: nil.
	filenames := anOrderedCollection.
	self setParents: self filenames to: self
]

{ #category : #'generated-initialize-release' }
CobolSameClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSameClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSameClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
