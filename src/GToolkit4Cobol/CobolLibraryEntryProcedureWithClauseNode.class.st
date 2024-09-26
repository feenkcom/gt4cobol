Class {
	#name : #CobolLibraryEntryProcedureWithClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'procedures'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryEntryProcedureWithClause: self
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> compositeNodeVariables [
	^ #(#procedures)
]

{ #category : #'generated-initialize-release' }
CobolLibraryEntryProcedureWithClauseNode >> initialize [
	super initialize.
	procedures := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> procedures [
	^ procedures
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> procedures: anOrderedCollection [
	self setParents: self procedures to: nil.
	procedures := anOrderedCollection.
	self setParents: self procedures to: self
]

{ #category : #generated }
CobolLibraryEntryProcedureWithClauseNode >> tokenVariables [
	^ #(#keyword)
]
