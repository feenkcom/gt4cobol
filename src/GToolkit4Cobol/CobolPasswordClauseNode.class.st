Class {
	#name : #CobolPasswordClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'password'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolPasswordClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPasswordClause: self
]

{ #category : #generated }
CobolPasswordClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolPasswordClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPasswordClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolPasswordClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolPasswordClauseNode >> nodeVariables [
	^ #(#password)
]

{ #category : #generated }
CobolPasswordClauseNode >> password [
	^ password
]

{ #category : #generated }
CobolPasswordClauseNode >> password: aCobolIdentifierNode [
	self password notNil ifTrue: [ self password parent: nil ].
	password := aCobolIdentifierNode.
	self password notNil ifTrue: [ self password parent: self ]
]
