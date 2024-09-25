Class {
	#name : #CobolSymbolicSourceClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSymbolicSourceClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicSourceClause: self
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolSymbolicSourceClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSymbolicSourceClauseNode >> nodeVariables [
	^ #(#dataName)
]
