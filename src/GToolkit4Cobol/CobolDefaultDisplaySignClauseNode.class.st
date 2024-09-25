Class {
	#name : #CobolDefaultDisplaySignClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDefaultDisplaySignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefaultDisplaySignClause: self
]

{ #category : #generated }
CobolDefaultDisplaySignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDefaultDisplaySignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDefaultDisplaySignClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDefaultDisplaySignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
