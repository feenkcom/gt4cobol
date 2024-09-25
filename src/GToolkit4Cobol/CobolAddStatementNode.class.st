Class {
	#name : #CobolAddStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'froms',
		'tos',
		'notOnSizeError',
		'onSizeError',
		'givings'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolAddStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAddStatement: self
]

{ #category : #generated }
CobolAddStatementNode >> compositeNodeVariables [
	^ #(#froms #tos #givings)
]

{ #category : #generated }
CobolAddStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolAddStatementNode >> froms [
	^ froms
]

{ #category : #generated }
CobolAddStatementNode >> froms: anOrderedCollection [
	self setParents: self froms to: nil.
	froms := anOrderedCollection.
	self setParents: self froms to: self
]

{ #category : #generated }
CobolAddStatementNode >> givings [
	^ givings
]

{ #category : #generated }
CobolAddStatementNode >> givings: anOrderedCollection [
	self setParents: self givings to: nil.
	givings := anOrderedCollection.
	self setParents: self givings to: self
]

{ #category : #'generated-initialize-release' }
CobolAddStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	froms := OrderedCollection new: 2.
	tos := OrderedCollection new: 2.
	givings := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAddStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolAddStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolAddStatementNode >> nodeVariables [
	^ #(#notOnSizeError #onSizeError)
]

{ #category : #generated }
CobolAddStatementNode >> notOnSizeError [
	^ notOnSizeError
]

{ #category : #generated }
CobolAddStatementNode >> notOnSizeError: aCobolHandlerNode [
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: nil ].
	notOnSizeError := aCobolHandlerNode.
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: self ]
]

{ #category : #generated }
CobolAddStatementNode >> onSizeError [
	^ onSizeError
]

{ #category : #generated }
CobolAddStatementNode >> onSizeError: aCobolHandlerNode [
	self onSizeError notNil ifTrue: [ self onSizeError parent: nil ].
	onSizeError := aCobolHandlerNode.
	self onSizeError notNil ifTrue: [ self onSizeError parent: self ]
]

{ #category : #generated }
CobolAddStatementNode >> tos [
	^ tos
]

{ #category : #generated }
CobolAddStatementNode >> tos: anOrderedCollection [
	self setParents: self tos to: nil.
	tos := anOrderedCollection.
	self setParents: self tos to: self
]
