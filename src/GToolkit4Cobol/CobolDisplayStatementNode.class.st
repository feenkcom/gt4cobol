Class {
	#name : #CobolDisplayStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'displaies',
		'upon',
		'_at'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDisplayStatementNode >> _at [
	^ _at
]

{ #category : #generated }
CobolDisplayStatementNode >> _at: aCobolExpressionNode [
	self _at notNil ifTrue: [ self _at parent: nil ].
	_at := aCobolExpressionNode.
	self _at notNil ifTrue: [ self _at parent: self ]
]

{ #category : #generated }
CobolDisplayStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDisplayStatement: self
]

{ #category : #generated }
CobolDisplayStatementNode >> compositeNodeVariables [
	^ #(#displaies)
]

{ #category : #generated }
CobolDisplayStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDisplayStatementNode >> displaies [
	^ displaies
]

{ #category : #generated }
CobolDisplayStatementNode >> displaies: anOrderedCollection [
	self setParents: self displaies to: nil.
	displaies := anOrderedCollection.
	self setParents: self displaies to: self
]

{ #category : #'generated-initialize-release' }
CobolDisplayStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	displaies := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDisplayStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDisplayStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDisplayStatementNode >> nodeVariables [
	^ #(#upon #_at)
]

{ #category : #generated }
CobolDisplayStatementNode >> upon [
	^ upon
]

{ #category : #generated }
CobolDisplayStatementNode >> upon: aCobolIdentifierNode [
	self upon notNil ifTrue: [ self upon parent: nil ].
	upon := aCobolIdentifierNode.
	self upon notNil ifTrue: [ self upon parent: self ]
]
