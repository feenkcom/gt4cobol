Class {
	#name : 'CobolSubtractStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'values',
		'vars',
		'notOnSizeError',
		'onSizeError',
		'from',
		'correspondingName',
		'fromName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSubtractStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubtractStatement: self
]

{ #category : 'generated' }
CobolSubtractStatementNode >> compositeNodeVariables [
	^ #(#values #vars)
]

{ #category : 'generated' }
CobolSubtractStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolSubtractStatementNode >> correspondingName [
	^ correspondingName
]

{ #category : 'generated' }
CobolSubtractStatementNode >> correspondingName: aCobolExpressionNode [
	self correspondingName notNil ifTrue: [ self correspondingName parent: nil ].
	correspondingName := aCobolExpressionNode.
	self correspondingName notNil ifTrue: [ self correspondingName parent: self ]
]

{ #category : 'generated' }
CobolSubtractStatementNode >> from [
	^ from
]

{ #category : 'generated' }
CobolSubtractStatementNode >> from: aCobolExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aCobolExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : 'generated' }
CobolSubtractStatementNode >> fromName [
	^ fromName
]

{ #category : 'generated' }
CobolSubtractStatementNode >> fromName: aCobolExpressionNode [
	self fromName notNil ifTrue: [ self fromName parent: nil ].
	fromName := aCobolExpressionNode.
	self fromName notNil ifTrue: [ self fromName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolSubtractStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	vars := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSubtractStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSubtractStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSubtractStatementNode >> nodeVariables [
	^ #(#notOnSizeError #onSizeError #from #correspondingName #fromName)
]

{ #category : 'generated' }
CobolSubtractStatementNode >> notOnSizeError [
	^ notOnSizeError
]

{ #category : 'generated' }
CobolSubtractStatementNode >> notOnSizeError: aCobolHandlerNode [
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: nil ].
	notOnSizeError := aCobolHandlerNode.
	self notOnSizeError notNil ifTrue: [ self notOnSizeError parent: self ]
]

{ #category : 'generated' }
CobolSubtractStatementNode >> onSizeError [
	^ onSizeError
]

{ #category : 'generated' }
CobolSubtractStatementNode >> onSizeError: aCobolHandlerNode [
	self onSizeError notNil ifTrue: [ self onSizeError parent: nil ].
	onSizeError := aCobolHandlerNode.
	self onSizeError notNil ifTrue: [ self onSizeError parent: self ]
]

{ #category : 'generated' }
CobolSubtractStatementNode >> values [
	^ values
]

{ #category : 'generated' }
CobolSubtractStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]

{ #category : 'generated' }
CobolSubtractStatementNode >> vars [
	^ vars
]

{ #category : 'generated' }
CobolSubtractStatementNode >> vars: anOrderedCollection [
	self setParents: self vars to: nil.
	vars := anOrderedCollection.
	self setParents: self vars to: self
]

{ #category : 'testing' }
CobolSubtractStatementNode >> writesIdentifier: anIdentifierNode [
	^ vars anySatisfy: [ :each | anIdentifierNode isDescendantFrom: each ]
]
