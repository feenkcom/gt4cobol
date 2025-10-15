Class {
	#name : 'CobolLibraryEntryProcedureUsingClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'usings'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryEntryProcedureUsingClause: self
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> compositeNodeVariables [
	^ #(#usings)
]

{ #category : 'generated-initialize-release' }
CobolLibraryEntryProcedureUsingClauseNode >> initialize [
	super initialize.
	usings := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> usings [
	^ usings
]

{ #category : 'generated' }
CobolLibraryEntryProcedureUsingClauseNode >> usings: anOrderedCollection [
	self setParents: self usings to: nil.
	usings := anOrderedCollection.
	self setParents: self usings to: self
]
