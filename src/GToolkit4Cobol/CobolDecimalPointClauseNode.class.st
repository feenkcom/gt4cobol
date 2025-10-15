Class {
	#name : 'CobolDecimalPointClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDecimalPointClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDecimalPointClause: self
]

{ #category : 'generated' }
CobolDecimalPointClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDecimalPointClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDecimalPointClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDecimalPointClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
