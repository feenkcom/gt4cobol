Class {
	#name : 'CobolMergeOnKeyClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'mergeNames'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeOnKeyClause: self
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> compositeNodeVariables [
	^ #(#mergeNames)
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolMergeOnKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	mergeNames := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> mergeNames [
	^ mergeNames
]

{ #category : 'generated' }
CobolMergeOnKeyClauseNode >> mergeNames: anOrderedCollection [
	self setParents: self mergeNames to: nil.
	mergeNames := anOrderedCollection.
	self setParents: self mergeNames to: self
]
