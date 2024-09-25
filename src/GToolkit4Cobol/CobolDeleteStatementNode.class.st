Class {
	#name : #CobolDeleteStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_filename',
		'notInvalidKeyPhrase',
		'invalidKeyPhrase'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDeleteStatementNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolDeleteStatementNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolDeleteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeleteStatement: self
]

{ #category : #generated }
CobolDeleteStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDeleteStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDeleteStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : #generated }
CobolDeleteStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : #generated }
CobolDeleteStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDeleteStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDeleteStatementNode >> nodeVariables [
	^ #(#_filename #notInvalidKeyPhrase #invalidKeyPhrase)
]

{ #category : #generated }
CobolDeleteStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : #generated }
CobolDeleteStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]
