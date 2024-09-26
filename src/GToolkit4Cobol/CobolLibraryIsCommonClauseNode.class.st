Class {
	#name : #CobolLibraryIsCommonClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLibraryIsCommonClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryIsCommonClause: self
]

{ #category : #generated }
CobolLibraryIsCommonClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolLibraryIsCommonClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLibraryIsCommonClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLibraryIsCommonClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
