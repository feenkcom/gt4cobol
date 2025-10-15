Class {
	#name : 'CobolSortOnKeyClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'sortNames'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSortOnKeyClause: self
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> compositeNodeVariables [
	^ #(#sortNames)
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolSortOnKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sortNames := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> sortNames [
	^ sortNames
]

{ #category : 'generated' }
CobolSortOnKeyClauseNode >> sortNames: anOrderedCollection [
	self setParents: self sortNames to: nil.
	sortNames := anOrderedCollection.
	self setParents: self sortNames to: self
]
