Class {
	#name : #CobolDataRecordsClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataRecordsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataRecordsClause: self
]

{ #category : #generated }
CobolDataRecordsClauseNode >> compositeNodeVariables [
	^ #(#dataNames)
]

{ #category : #generated }
CobolDataRecordsClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDataRecordsClauseNode >> dataNames [
	^ dataNames
]

{ #category : #generated }
CobolDataRecordsClauseNode >> dataNames: anOrderedCollection [
	self setParents: self dataNames to: nil.
	dataNames := anOrderedCollection.
	self setParents: self dataNames to: self
]

{ #category : #'generated-initialize-release' }
CobolDataRecordsClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	dataNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataRecordsClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataRecordsClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
