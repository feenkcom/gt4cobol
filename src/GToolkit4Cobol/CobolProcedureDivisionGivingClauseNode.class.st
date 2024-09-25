Class {
	#name : #CobolProcedureDivisionGivingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'returning'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureDivisionGivingClause: self
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> nodeVariables [
	^ #(#returning)
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> returning [
	^ returning
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> returning: aCobolIdentifierNode [
	self returning notNil ifTrue: [ self returning parent: nil ].
	returning := aCobolIdentifierNode.
	self returning notNil ifTrue: [ self returning parent: self ]
]

{ #category : #generated }
CobolProcedureDivisionGivingClauseNode >> tokenVariables [
	^ #(#keyword)
]
