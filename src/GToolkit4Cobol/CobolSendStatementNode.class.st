Class {
	#name : #CobolSendStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword',
		'statement',
		'notOnExceptionClause',
		'onExceptionClause'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSendStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSendStatement: self
]

{ #category : #generated }
CobolSendStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolSendStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolSendStatementNode >> nodeVariables [
	^ #(#statement #notOnExceptionClause #onExceptionClause)
]

{ #category : #generated }
CobolSendStatementNode >> notOnExceptionClause [
	^ notOnExceptionClause
]

{ #category : #generated }
CobolSendStatementNode >> notOnExceptionClause: aCobolHandlerNode [
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: nil ].
	notOnExceptionClause := aCobolHandlerNode.
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: self ]
]

{ #category : #generated }
CobolSendStatementNode >> onExceptionClause [
	^ onExceptionClause
]

{ #category : #generated }
CobolSendStatementNode >> onExceptionClause: aCobolHandlerNode [
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: nil ].
	onExceptionClause := aCobolHandlerNode.
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: self ]
]

{ #category : #generated }
CobolSendStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CobolSendStatementNode >> statement: aCobolProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aCobolProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]

{ #category : #generated }
CobolSendStatementNode >> tokenVariables [
	^ #(#keyword)
]
