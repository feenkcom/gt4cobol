Class {
	#name : #CobolMessageCountClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolMessageCountClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMessageCountClause: self
]

{ #category : #generated }
CobolMessageCountClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMessageCountClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolMessageCountClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolMessageCountClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMessageCountClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMessageCountClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMessageCountClauseNode >> nodeVariables [
	^ #(#dataName)
]
