Class {
	#name : #CobolFunctionCallNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'keyword',
		'name',
		'lefts',
		'arguments',
		'rights',
		'commas',
		'position',
		'colon',
		'length'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFunctionCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionCall: self
]

{ #category : #generated }
CobolFunctionCallNode >> arguments [
	^ arguments
]

{ #category : #generated }
CobolFunctionCallNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CobolFunctionCallNode >> colon [
	^ colon
]

{ #category : #generated }
CobolFunctionCallNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CobolFunctionCallNode >> commas [
	^ commas
]

{ #category : #generated }
CobolFunctionCallNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CobolFunctionCallNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #generated }
CobolFunctionCallNode >> compositeTokenVariables [
	^ #(#lefts #rights #commas #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CobolFunctionCallNode >> initialize [
	super initialize.
	lefts := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	rights := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFunctionCallNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolFunctionCallNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolFunctionCallNode >> lefts [
	^ lefts
]

{ #category : #generated }
CobolFunctionCallNode >> lefts: anOrderedCollection [
	lefts := anOrderedCollection
]

{ #category : #generated }
CobolFunctionCallNode >> length [
	^ length
]

{ #category : #generated }
CobolFunctionCallNode >> length: aCobolExpressionNode [
	self length notNil ifTrue: [ self length parent: nil ].
	length := aCobolExpressionNode.
	self length notNil ifTrue: [ self length parent: self ]
]

{ #category : #generated }
CobolFunctionCallNode >> name [
	^ name
]

{ #category : #generated }
CobolFunctionCallNode >> name: anObject [
	self setParent: self name to: nil.
	name := anObject.
	self setParent: self name to: self
]

{ #category : #generated }
CobolFunctionCallNode >> nodeVariables [
	^ #(#position #length)
]

{ #category : #generated }
CobolFunctionCallNode >> otherVariables [
	^ #(#name)
]

{ #category : #generated }
CobolFunctionCallNode >> position [
	^ position
]

{ #category : #generated }
CobolFunctionCallNode >> position: aCobolExpressionNode [
	self position notNil ifTrue: [ self position parent: nil ].
	position := aCobolExpressionNode.
	self position notNil ifTrue: [ self position parent: self ]
]

{ #category : #generated }
CobolFunctionCallNode >> rights [
	^ rights
]

{ #category : #generated }
CobolFunctionCallNode >> rights: anOrderedCollection [
	rights := anOrderedCollection
]

{ #category : #generated }
CobolFunctionCallNode >> tokenVariables [
	^ #(#keyword #colon)
]
