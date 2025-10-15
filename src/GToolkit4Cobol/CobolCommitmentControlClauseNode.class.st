Class {
	#name : 'CobolCommitmentControlClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'fileName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommitmentControlClause: self
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> fileName [
	^ fileName
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolCommitmentControlClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolCommitmentControlClauseNode >> nodeVariables [
	^ #(#fileName)
]
