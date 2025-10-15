Class {
	#name : 'CobolDefaultComputationalSignClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDefaultComputationalSignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefaultComputationalSignClause: self
]

{ #category : 'generated' }
CobolDefaultComputationalSignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDefaultComputationalSignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDefaultComputationalSignClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDefaultComputationalSignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
