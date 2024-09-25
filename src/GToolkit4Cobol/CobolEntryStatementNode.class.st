Class {
	#name : #CobolEntryStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'entry',
		'usings'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolEntryStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEntryStatement: self
]

{ #category : #generated }
CobolEntryStatementNode >> compositeNodeVariables [
	^ #(#usings)
]

{ #category : #generated }
CobolEntryStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolEntryStatementNode >> entry [
	^ entry
]

{ #category : #generated }
CobolEntryStatementNode >> entry: aCobolExpressionNode [
	self entry notNil ifTrue: [ self entry parent: nil ].
	entry := aCobolExpressionNode.
	self entry notNil ifTrue: [ self entry parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolEntryStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	usings := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEntryStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEntryStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEntryStatementNode >> nodeVariables [
	^ #(#entry)
]

{ #category : #generated }
CobolEntryStatementNode >> usings [
	^ usings
]

{ #category : #generated }
CobolEntryStatementNode >> usings: anOrderedCollection [
	self setParents: self usings to: nil.
	usings := anOrderedCollection.
	self setParents: self usings to: self
]
