Class {
	#name : 'CobolExternalClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolExternalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExternalClause: self
]

{ #category : 'generated' }
CobolExternalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolExternalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolExternalClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolExternalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
