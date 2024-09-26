Class {
	#name : #CobolDataRedefinesClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'redefines'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataRedefinesClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataRedefinesClause: self
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> nodeVariables [
	^ #(#redefines)
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> redefines [
	^ redefines
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> redefines: aCobolIdentifierNode [
	self redefines notNil ifTrue: [ self redefines parent: nil ].
	redefines := aCobolIdentifierNode.
	self redefines notNil ifTrue: [ self redefines parent: self ]
]

{ #category : #generated }
CobolDataRedefinesClauseNode >> tokenVariables [
	^ #(#keyword)
]
