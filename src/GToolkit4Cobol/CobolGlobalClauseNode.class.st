Class {
	#name : #CobolGlobalClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolGlobalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGlobalClause: self
]

{ #category : #generated }
CobolGlobalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolGlobalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolGlobalClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolGlobalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
