Class {
	#name : #CobolMoveStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'moveToSendingArea',
		'tos',
		'corresponding'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolMoveStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMoveStatement: self
]

{ #category : #generated }
CobolMoveStatementNode >> compositeNodeVariables [
	^ #(#tos)
]

{ #category : #generated }
CobolMoveStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMoveStatementNode >> corresponding [
	^ corresponding
]

{ #category : #generated }
CobolMoveStatementNode >> corresponding: aCobolExpressionNode [
	self corresponding notNil ifTrue: [ self corresponding parent: nil ].
	corresponding := aCobolExpressionNode.
	self corresponding notNil ifTrue: [ self corresponding parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolMoveStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	tos := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMoveStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMoveStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMoveStatementNode >> moveToSendingArea [
	^ moveToSendingArea
]

{ #category : #generated }
CobolMoveStatementNode >> moveToSendingArea: aCobolExpressionNode [
	self moveToSendingArea notNil ifTrue: [ self moveToSendingArea parent: nil ].
	moveToSendingArea := aCobolExpressionNode.
	self moveToSendingArea notNil ifTrue: [ self moveToSendingArea parent: self ]
]

{ #category : #generated }
CobolMoveStatementNode >> nodeVariables [
	^ #(#moveToSendingArea #corresponding)
]

{ #category : #generated }
CobolMoveStatementNode >> tos [
	^ tos
]

{ #category : #generated }
CobolMoveStatementNode >> tos: anOrderedCollection [
	self setParents: self tos to: nil.
	tos := anOrderedCollection.
	self setParents: self tos to: self
]
