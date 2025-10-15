Class {
	#name : 'CobolDeleteStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'fileName',
		'notInvalidKeyPhrase',
		'invalidKeyPhrase'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDeleteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeleteStatement: self
]

{ #category : 'generated' }
CobolDeleteStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolDeleteStatementNode >> fileName [
	^ fileName
]

{ #category : 'generated' }
CobolDeleteStatementNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolDeleteStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDeleteStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : 'generated' }
CobolDeleteStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : 'generated' }
CobolDeleteStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDeleteStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolDeleteStatementNode >> nodeVariables [
	^ #(#fileName #notInvalidKeyPhrase #invalidKeyPhrase)
]

{ #category : 'generated' }
CobolDeleteStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : 'generated' }
CobolDeleteStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]
