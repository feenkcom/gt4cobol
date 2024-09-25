Class {
	#name : #CobolScreenDescriptionJustifiedClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionJustifiedClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionJustifiedClause: self
]

{ #category : #generated }
CobolScreenDescriptionJustifiedClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionJustifiedClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionJustifiedClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionJustifiedClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
