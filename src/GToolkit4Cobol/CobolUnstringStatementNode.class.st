Class {
	#name : 'CobolUnstringStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'unstring',
		'delimiteds',
		'intos',
		'counts',
		'delimiters',
		'notOnOverflowPhrase',
		'onOverflowPhrase',
		'tallyingName',
		'pointerName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolUnstringStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnstringStatement: self
]

{ #category : 'generated' }
CobolUnstringStatementNode >> compositeNodeVariables [
	^ #(#delimiteds #intos #counts #delimiters)
]

{ #category : 'generated' }
CobolUnstringStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolUnstringStatementNode >> counts [
	^ counts
]

{ #category : 'generated' }
CobolUnstringStatementNode >> counts: anOrderedCollection [
	self setParents: self counts to: nil.
	counts := anOrderedCollection.
	self setParents: self counts to: self
]

{ #category : 'generated' }
CobolUnstringStatementNode >> delimiteds [
	^ delimiteds
]

{ #category : 'generated' }
CobolUnstringStatementNode >> delimiteds: anOrderedCollection [
	self setParents: self delimiteds to: nil.
	delimiteds := anOrderedCollection.
	self setParents: self delimiteds to: self
]

{ #category : 'generated' }
CobolUnstringStatementNode >> delimiters [
	^ delimiters
]

{ #category : 'generated' }
CobolUnstringStatementNode >> delimiters: anOrderedCollection [
	self setParents: self delimiters to: nil.
	delimiters := anOrderedCollection.
	self setParents: self delimiters to: self
]

{ #category : 'generated-initialize-release' }
CobolUnstringStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	delimiteds := OrderedCollection new: 2.
	intos := OrderedCollection new: 2.
	counts := OrderedCollection new: 2.
	delimiters := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolUnstringStatementNode >> intos [
	^ intos
]

{ #category : 'generated' }
CobolUnstringStatementNode >> intos: anOrderedCollection [
	self setParents: self intos to: nil.
	intos := anOrderedCollection.
	self setParents: self intos to: self
]

{ #category : 'generated' }
CobolUnstringStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolUnstringStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolUnstringStatementNode >> nodeVariables [
	^ #(#unstring #notOnOverflowPhrase #onOverflowPhrase #tallyingName #pointerName)
]

{ #category : 'generated' }
CobolUnstringStatementNode >> notOnOverflowPhrase [
	^ notOnOverflowPhrase
]

{ #category : 'generated' }
CobolUnstringStatementNode >> notOnOverflowPhrase: aCobolHandlerNode [
	self notOnOverflowPhrase notNil
		ifTrue: [ self notOnOverflowPhrase parent: nil ].
	notOnOverflowPhrase := aCobolHandlerNode.
	self notOnOverflowPhrase notNil
		ifTrue: [ self notOnOverflowPhrase parent: self ]
]

{ #category : 'generated' }
CobolUnstringStatementNode >> onOverflowPhrase [
	^ onOverflowPhrase
]

{ #category : 'generated' }
CobolUnstringStatementNode >> onOverflowPhrase: aCobolHandlerNode [
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: nil ].
	onOverflowPhrase := aCobolHandlerNode.
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: self ]
]

{ #category : 'generated' }
CobolUnstringStatementNode >> pointerName [
	^ pointerName
]

{ #category : 'generated' }
CobolUnstringStatementNode >> pointerName: aCobolExpressionNode [
	self pointerName notNil ifTrue: [ self pointerName parent: nil ].
	pointerName := aCobolExpressionNode.
	self pointerName notNil ifTrue: [ self pointerName parent: self ]
]

{ #category : 'generated' }
CobolUnstringStatementNode >> tallyingName [
	^ tallyingName
]

{ #category : 'generated' }
CobolUnstringStatementNode >> tallyingName: aCobolExpressionNode [
	self tallyingName notNil ifTrue: [ self tallyingName parent: nil ].
	tallyingName := aCobolExpressionNode.
	self tallyingName notNil ifTrue: [ self tallyingName parent: self ]
]

{ #category : 'generated' }
CobolUnstringStatementNode >> unstring [
	^ unstring
]

{ #category : 'generated' }
CobolUnstringStatementNode >> unstring: aCobolExpressionNode [
	self unstring notNil ifTrue: [ self unstring parent: nil ].
	unstring := aCobolExpressionNode.
	self unstring notNil ifTrue: [ self unstring parent: self ]
]

{ #category : 'testing' }
CobolUnstringStatementNode >> writesIdentifier: anIdentifierNode [
	^ intos anySatisfy: [ :each | anIdentifierNode isDescendantFrom: each ]
]
