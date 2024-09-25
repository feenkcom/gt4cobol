Class {
	#name : #CobolReadStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_filename',
		'keyName',
		'invalidKeyPhrase',
		'notInvalidKeyPhrase',
		'atEndPhrase',
		'notAtEndPhrase',
		'into'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReadStatementNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolReadStatementNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReadStatement: self
]

{ #category : #generated }
CobolReadStatementNode >> atEndPhrase [
	^ atEndPhrase
]

{ #category : #generated }
CobolReadStatementNode >> atEndPhrase: aCobolHandlerNode [
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: nil ].
	atEndPhrase := aCobolHandlerNode.
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReadStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReadStatementNode >> into [
	^ into
]

{ #category : #generated }
CobolReadStatementNode >> into: aCobolExpressionNode [
	self into notNil ifTrue: [ self into parent: nil ].
	into := aCobolExpressionNode.
	self into notNil ifTrue: [ self into parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : #generated }
CobolReadStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> keyName [
	^ keyName
]

{ #category : #generated }
CobolReadStatementNode >> keyName: aCobolExpressionNode [
	self keyName notNil ifTrue: [ self keyName parent: nil ].
	keyName := aCobolExpressionNode.
	self keyName notNil ifTrue: [ self keyName parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReadStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReadStatementNode >> nodeVariables [
	^ #(#_filename #keyName #invalidKeyPhrase #notInvalidKeyPhrase #atEndPhrase #notAtEndPhrase #into)
]

{ #category : #generated }
CobolReadStatementNode >> notAtEndPhrase [
	^ notAtEndPhrase
]

{ #category : #generated }
CobolReadStatementNode >> notAtEndPhrase: aCobolHandlerNode [
	self notAtEndPhrase notNil ifTrue: [ self notAtEndPhrase parent: nil ].
	notAtEndPhrase := aCobolHandlerNode.
	self notAtEndPhrase notNil ifTrue: [ self notAtEndPhrase parent: self ]
]

{ #category : #generated }
CobolReadStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : #generated }
CobolReadStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]
