Class {
	#name : #CobolLibraryEntryProcedureForClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'value'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryEntryProcedureForClause: self
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> value [
	^ value
]

{ #category : #generated }
CobolLibraryEntryProcedureForClauseNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
