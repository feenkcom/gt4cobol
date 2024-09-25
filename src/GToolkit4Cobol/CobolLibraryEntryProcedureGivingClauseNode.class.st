Class {
	#name : #CobolLibraryEntryProcedureGivingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'giving'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryEntryProcedureGivingClause: self
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> giving [
	^ giving
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> giving: aCobolIdentifierNode [
	self giving notNil ifTrue: [ self giving parent: nil ].
	giving := aCobolIdentifierNode.
	self giving notNil ifTrue: [ self giving parent: self ]
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> nodeVariables [
	^ #(#giving)
]

{ #category : #generated }
CobolLibraryEntryProcedureGivingClauseNode >> tokenVariables [
	^ #(#keyword)
]
