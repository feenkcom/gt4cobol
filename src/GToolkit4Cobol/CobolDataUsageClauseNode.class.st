Class {
	#name : #CobolDataUsageClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataUsageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataUsageClause: self
]

{ #category : #generated }
CobolDataUsageClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataUsageClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataUsageClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataUsageClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
