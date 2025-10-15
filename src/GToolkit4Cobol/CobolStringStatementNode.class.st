Class {
	#name : 'CobolStringStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'strings',
		'commas',
		'counts',
		'fors',
		'into',
		'notOnOverflowPhrase',
		'onOverflowPhrase',
		'pointerName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolStringStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStringStatement: self
]

{ #category : 'generated' }
CobolStringStatementNode >> commas [
	^ commas
]

{ #category : 'generated' }
CobolStringStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
CobolStringStatementNode >> compositeNodeVariables [
	^ #(#strings #counts #fors)
]

{ #category : 'generated' }
CobolStringStatementNode >> compositeTokenVariables [
	^ #(#keywords #commas)
]

{ #category : 'generated' }
CobolStringStatementNode >> counts [
	^ counts
]

{ #category : 'generated' }
CobolStringStatementNode >> counts: anOrderedCollection [
	self setParents: self counts to: nil.
	counts := anOrderedCollection.
	self setParents: self counts to: self
]

{ #category : 'generated' }
CobolStringStatementNode >> fors [
	^ fors
]

{ #category : 'generated' }
CobolStringStatementNode >> fors: anOrderedCollection [
	self setParents: self fors to: nil.
	fors := anOrderedCollection.
	self setParents: self fors to: self
]

{ #category : 'generated-initialize-release' }
CobolStringStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	strings := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	counts := OrderedCollection new: 2.
	fors := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolStringStatementNode >> into [
	^ into
]

{ #category : 'generated' }
CobolStringStatementNode >> into: aCobolExpressionNode [
	self into notNil ifTrue: [ self into parent: nil ].
	into := aCobolExpressionNode.
	self into notNil ifTrue: [ self into parent: self ]
]

{ #category : 'generated' }
CobolStringStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolStringStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolStringStatementNode >> nodeVariables [
	^ #(#into #notOnOverflowPhrase #onOverflowPhrase #pointerName)
]

{ #category : 'generated' }
CobolStringStatementNode >> notOnOverflowPhrase [
	^ notOnOverflowPhrase
]

{ #category : 'generated' }
CobolStringStatementNode >> notOnOverflowPhrase: aCobolHandlerNode [
	self notOnOverflowPhrase notNil
		ifTrue: [ self notOnOverflowPhrase parent: nil ].
	notOnOverflowPhrase := aCobolHandlerNode.
	self notOnOverflowPhrase notNil
		ifTrue: [ self notOnOverflowPhrase parent: self ]
]

{ #category : 'generated' }
CobolStringStatementNode >> onOverflowPhrase [
	^ onOverflowPhrase
]

{ #category : 'generated' }
CobolStringStatementNode >> onOverflowPhrase: aCobolHandlerNode [
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: nil ].
	onOverflowPhrase := aCobolHandlerNode.
	self onOverflowPhrase notNil ifTrue: [ self onOverflowPhrase parent: self ]
]

{ #category : 'generated' }
CobolStringStatementNode >> pointerName [
	^ pointerName
]

{ #category : 'generated' }
CobolStringStatementNode >> pointerName: aCobolExpressionNode [
	self pointerName notNil ifTrue: [ self pointerName parent: nil ].
	pointerName := aCobolExpressionNode.
	self pointerName notNil ifTrue: [ self pointerName parent: self ]
]

{ #category : 'generated' }
CobolStringStatementNode >> strings [
	^ strings
]

{ #category : 'generated' }
CobolStringStatementNode >> strings: anOrderedCollection [
	self setParents: self strings to: nil.
	strings := anOrderedCollection.
	self setParents: self strings to: self
]

{ #category : 'testing' }
CobolStringStatementNode >> writesIdentifier: anIdentifierNode [
	^ into notNil and: [ anIdentifierNode isDescendantFrom: into ]
]
