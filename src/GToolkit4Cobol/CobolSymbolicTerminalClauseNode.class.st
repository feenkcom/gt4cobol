Class {
	#name : #CobolSymbolicTerminalClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicTerminalClause: self
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolSymbolicTerminalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSymbolicTerminalClauseNode >> nodeVariables [
	^ #(#dataName)
]
