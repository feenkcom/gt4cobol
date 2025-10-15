Class {
	#name : 'CobolSymbolicDestinationClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicDestinationClause: self
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> dataName [
	^ dataName
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolSymbolicDestinationClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSymbolicDestinationClauseNode >> nodeVariables [
	^ #(#dataName)
]
