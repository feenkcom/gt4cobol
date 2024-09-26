Class {
	#name : #CobolComputeStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'lhses',
		'op',
		'value',
		'notOnSizeError',
		'onSizeError'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolComputeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitComputeStatement: self
]

{ #category : #generated }
CobolComputeStatementNode >> compositeNodeVariables [
	^ #(#lhses)
]

{ #category : #generated }
CobolComputeStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolComputeStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	lhses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolComputeStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolComputeStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolComputeStatementNode >> lhses [
	^ lhses
]

{ #category : #generated }
CobolComputeStatementNode >> lhses: anOrderedCollection [
	self setParents: self lhses to: nil.
	lhses := anOrderedCollection.
	self setParents: self lhses to: self
]

{ #category : #generated }
CobolComputeStatementNode >> nodeVariables [
	^ #(#value #notOnSizeError #onSizeError)
]

{ #category : #generated }
CobolComputeStatementNode >> notOnSizeError [
	^ notOnSizeError
]

{ #category : #generated }
CobolComputeStatementNode >> notOnSizeError: aCobolHandlerNode [
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: nil ].
	notOnSizeError := aCobolHandlerNode.
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: self ]
]

{ #category : #generated }
CobolComputeStatementNode >> onSizeError [
	^ onSizeError
]

{ #category : #generated }
CobolComputeStatementNode >> onSizeError: aCobolHandlerNode [
	self onSizeError notNil ifTrue: [ self onSizeError parent: nil ].
	onSizeError := aCobolHandlerNode.
	self onSizeError notNil ifTrue: [ self onSizeError parent: self ]
]

{ #category : #generated }
CobolComputeStatementNode >> op [
	^ op
]

{ #category : #generated }
CobolComputeStatementNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
CobolComputeStatementNode >> tokenVariables [
	^ #(#op)
]

{ #category : #generated }
CobolComputeStatementNode >> value [
	^ value
]

{ #category : #generated }
CobolComputeStatementNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
