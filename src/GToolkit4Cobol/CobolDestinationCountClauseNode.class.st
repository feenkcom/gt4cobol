Class {
	#name : #CobolDestinationCountClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDestinationCountClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDestinationCountClause: self
]

{ #category : #generated }
CobolDestinationCountClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDestinationCountClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolDestinationCountClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolDestinationCountClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDestinationCountClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDestinationCountClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDestinationCountClauseNode >> nodeVariables [
	^ #(#dataName)
]
