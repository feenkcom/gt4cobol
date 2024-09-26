Class {
	#name : #CobolDataGlobalClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataGlobalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataGlobalClause: self
]

{ #category : #generated }
CobolDataGlobalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataGlobalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataGlobalClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataGlobalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
