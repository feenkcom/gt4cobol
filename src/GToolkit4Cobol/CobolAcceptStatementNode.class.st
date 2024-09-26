Class {
	#name : #CobolAcceptStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'accept',
		'notOnExceptionClause',
		'onExceptionClause',
		'mnemonic'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolAcceptStatementNode >> accept [
	^ accept
]

{ #category : #generated }
CobolAcceptStatementNode >> accept: aCobolExpressionNode [
	self accept notNil ifTrue: [ self accept parent: nil ].
	accept := aCobolExpressionNode.
	self accept notNil ifTrue: [ self accept parent: self ]
]

{ #category : #generated }
CobolAcceptStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAcceptStatement: self
]

{ #category : #generated }
CobolAcceptStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolAcceptStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAcceptStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolAcceptStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolAcceptStatementNode >> mnemonic [
	^ mnemonic
]

{ #category : #generated }
CobolAcceptStatementNode >> mnemonic: aCobolIdentifierNode [
	self mnemonic notNil ifTrue: [ self mnemonic parent: nil ].
	mnemonic := aCobolIdentifierNode.
	self mnemonic notNil ifTrue: [ self mnemonic parent: self ]
]

{ #category : #generated }
CobolAcceptStatementNode >> nodeVariables [
	^ #(#accept #notOnExceptionClause #onExceptionClause #mnemonic)
]

{ #category : #generated }
CobolAcceptStatementNode >> notOnExceptionClause [
	^ notOnExceptionClause
]

{ #category : #generated }
CobolAcceptStatementNode >> notOnExceptionClause: aCobolHandlerNode [
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: nil ].
	notOnExceptionClause := aCobolHandlerNode.
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: self ]
]

{ #category : #generated }
CobolAcceptStatementNode >> onExceptionClause [
	^ onExceptionClause
]

{ #category : #generated }
CobolAcceptStatementNode >> onExceptionClause: aCobolHandlerNode [
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: nil ].
	onExceptionClause := aCobolHandlerNode.
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: self ]
]
