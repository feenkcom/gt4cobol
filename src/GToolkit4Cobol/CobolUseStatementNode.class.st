Class {
	#name : #CobolUseStatementNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'clause'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolUseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseStatement: self
]

{ #category : #generated }
CobolUseStatementNode >> clause [
	^ clause
]

{ #category : #generated }
CobolUseStatementNode >> clause: aCobolProgramNode [
	self clause notNil ifTrue: [ self clause parent: nil ].
	clause := aCobolProgramNode.
	self clause notNil ifTrue: [ self clause parent: self ]
]

{ #category : #generated }
CobolUseStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolUseStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolUseStatementNode >> nodeVariables [
	^ #(#clause)
]

{ #category : #generated }
CobolUseStatementNode >> tokenVariables [
	^ #(#keyword)
]
