Class {
	#name : #CobolDataRecordAreaClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataRecordAreaClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataRecordAreaClause: self
]

{ #category : #generated }
CobolDataRecordAreaClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataRecordAreaClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataRecordAreaClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataRecordAreaClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
