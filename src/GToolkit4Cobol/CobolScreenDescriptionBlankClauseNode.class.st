Class {
	#name : 'CobolScreenDescriptionBlankClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionBlankClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionBlankClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionBlankClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolScreenDescriptionBlankClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolScreenDescriptionBlankClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolScreenDescriptionBlankClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
