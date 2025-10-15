Class {
	#name : 'CobolDataBlankWhenZeroClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataBlankWhenZeroClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataBlankWhenZeroClause: self
]

{ #category : 'generated' }
CobolDataBlankWhenZeroClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDataBlankWhenZeroClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataBlankWhenZeroClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataBlankWhenZeroClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
