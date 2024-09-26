Class {
	#name : #CobolSymbolicSubQueueClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicSubQueueClause: self
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolSymbolicSubQueueClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSymbolicSubQueueClauseNode >> nodeVariables [
	^ #(#dataName)
]
