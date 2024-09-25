Class {
	#name : #CobolCallStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'call',
		'onExceptionClause',
		'notOnExceptionClause',
		'onOverflowPhrase',
		'giving',
		'references',
		'values',
		'contents'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolCallStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCallStatement: self
]

{ #category : #generated }
CobolCallStatementNode >> call [
	^ call
]

{ #category : #generated }
CobolCallStatementNode >> call: aCobolExpressionNode [
	self call notNil ifTrue: [ self call parent: nil ].
	call := aCobolExpressionNode.
	self call notNil ifTrue: [ self call parent: self ]
]

{ #category : #generated }
CobolCallStatementNode >> compositeNodeVariables [
	^ #(#references #values #contents)
]

{ #category : #generated }
CobolCallStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolCallStatementNode >> contents [
	^ contents
]

{ #category : #generated }
CobolCallStatementNode >> contents: anOrderedCollection [
	self setParents: self contents to: nil.
	contents := anOrderedCollection.
	self setParents: self contents to: self
]

{ #category : #generated }
CobolCallStatementNode >> giving [
	^ giving
]

{ #category : #generated }
CobolCallStatementNode >> giving: aCobolExpressionNode [
	self giving notNil ifTrue: [ self giving parent: nil ].
	giving := aCobolExpressionNode.
	self giving notNil ifTrue: [ self giving parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolCallStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	references := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	contents := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCallStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCallStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCallStatementNode >> nodeVariables [
	^ #(#call #onExceptionClause #notOnExceptionClause #onOverflowPhrase #giving)
]

{ #category : #generated }
CobolCallStatementNode >> notOnExceptionClause [
	^ notOnExceptionClause
]

{ #category : #generated }
CobolCallStatementNode >> notOnExceptionClause: aCobolHandlerNode [
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: nil ].
	notOnExceptionClause := aCobolHandlerNode.
	self notOnExceptionClause notNil
		ifTrue: [ self notOnExceptionClause parent: self ]
]

{ #category : #generated }
CobolCallStatementNode >> onExceptionClause [
	^ onExceptionClause
]

{ #category : #generated }
CobolCallStatementNode >> onExceptionClause: aCobolHandlerNode [
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: nil ].
	onExceptionClause := aCobolHandlerNode.
	self onExceptionClause notNil ifTrue: [ self onExceptionClause parent: self ]
]

{ #category : #generated }
CobolCallStatementNode >> onOverflowPhrase [
	^ onOverflowPhrase
]

{ #category : #generated }
CobolCallStatementNode >> onOverflowPhrase: aCobolHandlerNode [
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: nil ].
	onOverflowPhrase := aCobolHandlerNode.
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: self ]
]

{ #category : #generated }
CobolCallStatementNode >> references [
	^ references
]

{ #category : #generated }
CobolCallStatementNode >> references: anOrderedCollection [
	self setParents: self references to: nil.
	references := anOrderedCollection.
	self setParents: self references to: self
]

{ #category : #generated }
CobolCallStatementNode >> values [
	^ values
]

{ #category : #generated }
CobolCallStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
