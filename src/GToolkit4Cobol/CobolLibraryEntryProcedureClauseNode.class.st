Class {
	#name : 'CobolLibraryEntryProcedureClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'name',
		'clauses'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryEntryProcedureClause: self
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> clauses [
	^ clauses
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : 'generated-initialize-release' }
CobolLibraryEntryProcedureClauseNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> name [
	^ name
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> name: anObject [
	self setParent: self name to: nil.
	name := anObject.
	self setParent: self name to: self
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> otherVariables [
	^ #(#name)
]

{ #category : 'generated' }
CobolLibraryEntryProcedureClauseNode >> tokenVariables [
	^ #(#keyword)
]
