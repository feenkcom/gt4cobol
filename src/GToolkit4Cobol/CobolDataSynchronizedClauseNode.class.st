Class {
	#name : #CobolDataSynchronizedClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataSynchronizedClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataSynchronizedClause: self
]

{ #category : #generated }
CobolDataSynchronizedClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataSynchronizedClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataSynchronizedClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataSynchronizedClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
