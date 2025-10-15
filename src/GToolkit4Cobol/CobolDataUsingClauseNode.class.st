Class {
	#name : 'CobolDataUsingClauseNode',
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
CobolDataUsingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataUsingClause: self
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> dataName [
	^ dataName
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolDataUsingClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolDataUsingClauseNode >> nodeVariables [
	^ #(#dataName)
]
