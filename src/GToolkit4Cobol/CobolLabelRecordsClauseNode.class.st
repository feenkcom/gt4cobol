Class {
	#name : 'CobolLabelRecordsClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'dataNames'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLabelRecordsClause: self
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> compositeNodeVariables [
	^ #(#dataNames)
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> dataNames [
	^ dataNames
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> dataNames: anOrderedCollection [
	self setParents: self dataNames to: nil.
	dataNames := anOrderedCollection.
	self setParents: self dataNames to: self
]

{ #category : 'generated-initialize-release' }
CobolLabelRecordsClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	dataNames := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolLabelRecordsClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
