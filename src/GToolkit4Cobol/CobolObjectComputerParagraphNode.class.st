Class {
	#name : #CobolObjectComputerParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'periods',
		'computerName',
		'computerClauses'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolObjectComputerParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectComputerParagraph: self
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> compositeNodeVariables [
	^ #(#computerClauses)
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> computerClauses [
	^ computerClauses
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> computerClauses: anOrderedCollection [
	self setParents: self computerClauses to: nil.
	computerClauses := anOrderedCollection.
	self setParents: self computerClauses to: self
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> computerName [
	^ computerName
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> computerName: aCobolIdentifierNode [
	self computerName notNil ifTrue: [ self computerName parent: nil ].
	computerName := aCobolIdentifierNode.
	self computerName notNil ifTrue: [ self computerName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolObjectComputerParagraphNode >> initialize [
	super initialize.
	periods := OrderedCollection new: 2.
	computerClauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> nodeVariables [
	^ #(#computerName)
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolObjectComputerParagraphNode >> tokenVariables [
	^ #(#keyword)
]
