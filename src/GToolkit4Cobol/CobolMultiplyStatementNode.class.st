Class {
	#name : #CobolMultiplyStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'left',
		'vars',
		'notOnSizeError',
		'onSizeError',
		'right'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolMultiplyStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMultiplyStatement: self
]

{ #category : #generated }
CobolMultiplyStatementNode >> compositeNodeVariables [
	^ #(#vars)
]

{ #category : #generated }
CobolMultiplyStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolMultiplyStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	vars := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMultiplyStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMultiplyStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMultiplyStatementNode >> left [
	^ left
]

{ #category : #generated }
CobolMultiplyStatementNode >> left: aCobolExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aCobolExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
CobolMultiplyStatementNode >> nodeVariables [
	^ #(#left #notOnSizeError #onSizeError #right)
]

{ #category : #generated }
CobolMultiplyStatementNode >> notOnSizeError [
	^ notOnSizeError
]

{ #category : #generated }
CobolMultiplyStatementNode >> notOnSizeError: aCobolHandlerNode [
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: nil ].
	notOnSizeError := aCobolHandlerNode.
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: self ]
]

{ #category : #generated }
CobolMultiplyStatementNode >> onSizeError [
	^ onSizeError
]

{ #category : #generated }
CobolMultiplyStatementNode >> onSizeError: aCobolHandlerNode [
	self onSizeError notNil ifTrue: [ self onSizeError parent: nil ].
	onSizeError := aCobolHandlerNode.
	self onSizeError notNil ifTrue: [ self onSizeError parent: self ]
]

{ #category : #generated }
CobolMultiplyStatementNode >> right [
	^ right
]

{ #category : #generated }
CobolMultiplyStatementNode >> right: aCobolExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aCobolExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CobolMultiplyStatementNode >> vars [
	^ vars
]

{ #category : #generated }
CobolMultiplyStatementNode >> vars: anOrderedCollection [
	self setParents: self vars to: nil.
	vars := anOrderedCollection.
	self setParents: self vars to: self
]
