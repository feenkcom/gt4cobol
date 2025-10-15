Class {
	#name : 'CobolLibraryIsGlobalClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolLibraryIsGlobalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryIsGlobalClause: self
]

{ #category : 'generated' }
CobolLibraryIsGlobalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolLibraryIsGlobalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolLibraryIsGlobalClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolLibraryIsGlobalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
