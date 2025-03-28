Class {
	#name : #CobolSymbolicQueueClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSymbolicQueueClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicQueueClause: self
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolSymbolicQueueClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSymbolicQueueClauseNode >> nodeVariables [
	^ #(#dataName)
]
