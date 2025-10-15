Class {
	#name : 'CobolDataThreadLocalClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataThreadLocalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataThreadLocalClause: self
]

{ #category : 'generated' }
CobolDataThreadLocalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDataThreadLocalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataThreadLocalClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataThreadLocalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
