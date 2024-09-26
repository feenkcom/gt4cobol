Class {
	#name : #CobolCommitmentControlClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'_filename'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCommitmentControlClauseNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommitmentControlClause: self
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolCommitmentControlClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCommitmentControlClauseNode >> nodeVariables [
	^ #(#_filename)
]
