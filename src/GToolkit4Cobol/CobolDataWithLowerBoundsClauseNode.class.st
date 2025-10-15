Class {
	#name : 'CobolDataWithLowerBoundsClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataWithLowerBoundsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataWithLowerBoundsClause: self
]

{ #category : 'generated' }
CobolDataWithLowerBoundsClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDataWithLowerBoundsClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataWithLowerBoundsClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataWithLowerBoundsClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
