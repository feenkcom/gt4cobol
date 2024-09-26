Class {
	#name : #CobolProcedureNameNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'name',
		'keyword',
		'sectionName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolProcedureNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureName: self
]

{ #category : #generated }
CobolProcedureNameNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolProcedureNameNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolProcedureNameNode >> name [
	^ name
]

{ #category : #generated }
CobolProcedureNameNode >> name: aCobolExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolProcedureNameNode >> nodeVariables [
	^ #(#name #sectionName)
]

{ #category : #generated }
CobolProcedureNameNode >> sectionName [
	^ sectionName
]

{ #category : #generated }
CobolProcedureNameNode >> sectionName: aCobolExpressionNode [
	self sectionName notNil ifTrue: [ self sectionName parent: nil ].
	sectionName := aCobolExpressionNode.
	self sectionName notNil ifTrue: [ self sectionName parent: self ]
]

{ #category : #generated }
CobolProcedureNameNode >> tokenVariables [
	^ #(#keyword)
]
