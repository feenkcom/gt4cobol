Class {
	#name : #CobolScreenDescriptionBlankWhenZeroClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionBlankWhenZeroClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionBlankWhenZeroClause: self
]

{ #category : #generated }
CobolScreenDescriptionBlankWhenZeroClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionBlankWhenZeroClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionBlankWhenZeroClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionBlankWhenZeroClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
