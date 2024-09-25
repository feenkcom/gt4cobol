Class {
	#name : #CobolDestinationTableClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'times',
		'indexNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDestinationTableClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDestinationTableClause: self
]

{ #category : #generated }
CobolDestinationTableClauseNode >> compositeNodeVariables [
	^ #(#indexNames)
]

{ #category : #generated }
CobolDestinationTableClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDestinationTableClauseNode >> indexNames [
	^ indexNames
]

{ #category : #generated }
CobolDestinationTableClauseNode >> indexNames: anOrderedCollection [
	self setParents: self indexNames to: nil.
	indexNames := anOrderedCollection.
	self setParents: self indexNames to: self
]

{ #category : #'generated-initialize-release' }
CobolDestinationTableClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	indexNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDestinationTableClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDestinationTableClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDestinationTableClauseNode >> nodeVariables [
	^ #(#times)
]

{ #category : #generated }
CobolDestinationTableClauseNode >> times [
	^ times
]

{ #category : #generated }
CobolDestinationTableClauseNode >> times: aCobolLiteralNode [
	self times notNil ifTrue: [ self times parent: nil ].
	times := aCobolLiteralNode.
	self times notNil ifTrue: [ self times parent: self ]
]
