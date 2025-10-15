Class {
	#name : 'CobolAccessModeClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolAccessModeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAccessModeClause: self
]

{ #category : 'generated' }
CobolAccessModeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolAccessModeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolAccessModeClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolAccessModeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
