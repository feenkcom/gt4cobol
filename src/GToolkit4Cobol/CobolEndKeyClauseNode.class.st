Class {
	#name : #CobolEndKeyClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolEndKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndKeyClause: self
]

{ #category : #generated }
CobolEndKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolEndKeyClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolEndKeyClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolEndKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEndKeyClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEndKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEndKeyClauseNode >> nodeVariables [
	^ #(#dataName)
]
