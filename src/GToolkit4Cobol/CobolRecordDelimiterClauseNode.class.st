Class {
	#name : 'CobolRecordDelimiterClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'assignmentName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordDelimiterClause: self
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> assignmentName [
	^ assignmentName
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> assignmentName: aCobolIdentifierNode [
	self assignmentName notNil ifTrue: [ self assignmentName parent: nil ].
	assignmentName := aCobolIdentifierNode.
	self assignmentName notNil ifTrue: [ self assignmentName parent: self ]
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolRecordDelimiterClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolRecordDelimiterClauseNode >> nodeVariables [
	^ #(#assignmentName)
]
