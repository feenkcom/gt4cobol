Class {
	#name : #CobolScreenDescriptionSignClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionSignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionSignClause: self
]

{ #category : #generated }
CobolScreenDescriptionSignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionSignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionSignClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionSignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
