Class {
	#name : #CobolDataJustifiedClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataJustifiedClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataJustifiedClause: self
]

{ #category : #generated }
CobolDataJustifiedClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataJustifiedClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataJustifiedClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataJustifiedClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
