Class {
	#name : #CobolReturnStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'return',
		'atEndPhrase',
		'notAtEndPhrase',
		'intoName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReturnStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReturnStatement: self
]

{ #category : #generated }
CobolReturnStatementNode >> atEndPhrase [
	^ atEndPhrase
]

{ #category : #generated }
CobolReturnStatementNode >> atEndPhrase: aCobolHandlerNode [
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: nil ].
	atEndPhrase := aCobolHandlerNode.
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: self ]
]

{ #category : #generated }
CobolReturnStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReturnStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReturnStatementNode >> intoName [
	^ intoName
]

{ #category : #generated }
CobolReturnStatementNode >> intoName: aCobolExpressionNode [
	self intoName notNil ifTrue: [ self intoName parent: nil ].
	intoName := aCobolExpressionNode.
	self intoName notNil ifTrue: [ self intoName parent: self ]
]

{ #category : #generated }
CobolReturnStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReturnStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReturnStatementNode >> nodeVariables [
	^ #(#return #atEndPhrase #notAtEndPhrase #intoName)
]

{ #category : #generated }
CobolReturnStatementNode >> notAtEndPhrase [
	^ notAtEndPhrase
]

{ #category : #generated }
CobolReturnStatementNode >> notAtEndPhrase: aCobolHandlerNode [
	self notAtEndPhrase notNil ifTrue: [ self notAtEndPhrase parent: nil ].
	notAtEndPhrase := aCobolHandlerNode.
	self notAtEndPhrase notNil ifTrue: [ self notAtEndPhrase parent: self ]
]

{ #category : #generated }
CobolReturnStatementNode >> return [
	^ return
]

{ #category : #generated }
CobolReturnStatementNode >> return: aCobolIdentifierNode [
	self return notNil ifTrue: [ self return parent: nil ].
	return := aCobolIdentifierNode.
	self return notNil ifTrue: [ self return parent: self ]
]
