Class {
	#name : 'CobolProcedureSectionHeaderNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'name',
		'keyword',
		'section'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureSectionHeader: self
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> name [
	^ name
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> name: aCobolExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> nodeVariables [
	^ #(#name #section)
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> section [
	^ section
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> section: aCobolLiteralNode [
	self section notNil ifTrue: [ self section parent: nil ].
	section := aCobolLiteralNode.
	self section notNil ifTrue: [ self section parent: self ]
]

{ #category : 'generated' }
CobolProcedureSectionHeaderNode >> tokenVariables [
	^ #(#keyword)
]
