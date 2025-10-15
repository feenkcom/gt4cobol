Class {
	#name : 'CobolStartStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'start',
		'notInvalidKeyPhrase',
		'invalidKeyPhrase',
		'ops',
		'keyName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolStartStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStartStatement: self
]

{ #category : 'generated' }
CobolStartStatementNode >> compositeTokenVariables [
	^ #(#keywords #ops)
]

{ #category : 'generated-initialize-release' }
CobolStartStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	ops := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolStartStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : 'generated' }
CobolStartStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : 'generated' }
CobolStartStatementNode >> keyName [
	^ keyName
]

{ #category : 'generated' }
CobolStartStatementNode >> keyName: aCobolExpressionNode [
	self keyName notNil ifTrue: [ self keyName parent: nil ].
	keyName := aCobolExpressionNode.
	self keyName notNil ifTrue: [ self keyName parent: self ]
]

{ #category : 'generated' }
CobolStartStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolStartStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolStartStatementNode >> nodeVariables [
	^ #(#start #notInvalidKeyPhrase #invalidKeyPhrase #keyName)
]

{ #category : 'generated' }
CobolStartStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : 'generated' }
CobolStartStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]

{ #category : 'generated' }
CobolStartStatementNode >> ops [
	^ ops
]

{ #category : 'generated' }
CobolStartStatementNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : 'generated' }
CobolStartStatementNode >> start [
	^ start
]

{ #category : 'generated' }
CobolStartStatementNode >> start: aCobolIdentifierNode [
	self start notNil ifTrue: [ self start parent: nil ].
	start := aCobolIdentifierNode.
	self start notNil ifTrue: [ self start parent: self ]
]
