Class {
	#name : #CobolDataSignClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataSignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataSignClause: self
]

{ #category : #generated }
CobolDataSignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataSignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataSignClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataSignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
