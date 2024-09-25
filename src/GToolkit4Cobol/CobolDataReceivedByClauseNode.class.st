Class {
	#name : #CobolDataReceivedByClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataReceivedByClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataReceivedByClause: self
]

{ #category : #generated }
CobolDataReceivedByClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataReceivedByClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataReceivedByClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataReceivedByClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
