Class {
	#name : #CobolReceiveStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'statement',
		'notOnExceptionClause',
		'onExceptionClause'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReceiveStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveStatement: self
]

{ #category : #generated }
CobolReceiveStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReceiveStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReceiveStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReceiveStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReceiveStatementNode >> nodeVariables [
	^ #(#statement #notOnExceptionClause #onExceptionClause)
]

{ #category : #generated }
CobolReceiveStatementNode >> notOnExceptionClause [
	^ notOnExceptionClause
]

{ #category : #generated }
CobolReceiveStatementNode >> notOnExceptionClause: aCobolHandlerNode [
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: nil ].
	notOnExceptionClause := aCobolHandlerNode.
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: self ]
]

{ #category : #generated }
CobolReceiveStatementNode >> onExceptionClause [
	^ onExceptionClause
]

{ #category : #generated }
CobolReceiveStatementNode >> onExceptionClause: aCobolHandlerNode [
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: nil ].
	onExceptionClause := aCobolHandlerNode.
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: self ]
]

{ #category : #generated }
CobolReceiveStatementNode >> statement [
	^ statement
]

{ #category : #generated }
CobolReceiveStatementNode >> statement: aCobolProgramNode [
	self statement notNil ifTrue: [ self statement parent: nil ].
	statement := aCobolProgramNode.
	self statement notNil ifTrue: [ self statement parent: self ]
]

{ #category : #'as yet unclassified' }
CobolReceiveStatementNode >> writesIdentifier: anIdentifierNode [
	^ (statement isKindOf: CobolReceiveIntoStatementNode)
		and: [ anIdentifierNode isDescendantFrom: statement ]
]
