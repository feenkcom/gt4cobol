Class {
	#name : #CobolStatusKeyClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolStatusKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatusKeyClause: self
]

{ #category : #generated }
CobolStatusKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolStatusKeyClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolStatusKeyClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolStatusKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolStatusKeyClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolStatusKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolStatusKeyClauseNode >> nodeVariables [
	^ #(#dataName)
]
