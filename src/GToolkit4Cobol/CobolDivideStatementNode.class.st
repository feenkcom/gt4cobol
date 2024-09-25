Class {
	#name : #CobolDivideStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'divide',
		'intos',
		'onSizeError',
		'notOnSizeError',
		'remainder',
		'givings',
		'by'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDivideStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDivideStatement: self
]

{ #category : #generated }
CobolDivideStatementNode >> by [
	^ by
]

{ #category : #generated }
CobolDivideStatementNode >> by: aCobolExpressionNode [
	self by notNil ifTrue: [ self by parent: nil ].
	by := aCobolExpressionNode.
	self by notNil ifTrue: [ self by parent: self ]
]

{ #category : #generated }
CobolDivideStatementNode >> compositeNodeVariables [
	^ #(#intos #givings)
]

{ #category : #generated }
CobolDivideStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDivideStatementNode >> divide [
	^ divide
]

{ #category : #generated }
CobolDivideStatementNode >> divide: aCobolExpressionNode [
	self divide notNil ifTrue: [ self divide parent: nil ].
	divide := aCobolExpressionNode.
	self divide notNil ifTrue: [ self divide parent: self ]
]

{ #category : #generated }
CobolDivideStatementNode >> givings [
	^ givings
]

{ #category : #generated }
CobolDivideStatementNode >> givings: anOrderedCollection [
	self setParents: self givings to: nil.
	givings := anOrderedCollection.
	self setParents: self givings to: self
]

{ #category : #'generated-initialize-release' }
CobolDivideStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	intos := OrderedCollection new: 2.
	givings := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDivideStatementNode >> intos [
	^ intos
]

{ #category : #generated }
CobolDivideStatementNode >> intos: anOrderedCollection [
	self setParents: self intos to: nil.
	intos := anOrderedCollection.
	self setParents: self intos to: self
]

{ #category : #generated }
CobolDivideStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDivideStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDivideStatementNode >> nodeVariables [
	^ #(#divide #onSizeError #notOnSizeError #remainder #by)
]

{ #category : #generated }
CobolDivideStatementNode >> notOnSizeError [
	^ notOnSizeError
]

{ #category : #generated }
CobolDivideStatementNode >> notOnSizeError: aCobolHandlerNode [
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: nil ].
	notOnSizeError := aCobolHandlerNode.
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: self ]
]

{ #category : #generated }
CobolDivideStatementNode >> onSizeError [
	^ onSizeError
]

{ #category : #generated }
CobolDivideStatementNode >> onSizeError: aCobolHandlerNode [
	self onSizeError notNil ifTrue: [ self onSizeError parent: nil ].
	onSizeError := aCobolHandlerNode.
	self onSizeError notNil ifTrue: [ self onSizeError parent: self ]
]

{ #category : #generated }
CobolDivideStatementNode >> remainder [
	^ remainder
]

{ #category : #generated }
CobolDivideStatementNode >> remainder: aCobolExpressionNode [
	self remainder notNil ifTrue: [ self remainder parent: nil ].
	remainder := aCobolExpressionNode.
	self remainder notNil ifTrue: [ self remainder parent: self ]
]
