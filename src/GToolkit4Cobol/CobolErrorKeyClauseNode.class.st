Class {
	#name : #CobolErrorKeyClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolErrorKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitErrorKeyClause: self
]

{ #category : #generated }
CobolErrorKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolErrorKeyClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolErrorKeyClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolErrorKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolErrorKeyClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolErrorKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolErrorKeyClauseNode >> nodeVariables [
	^ #(#dataName)
]
