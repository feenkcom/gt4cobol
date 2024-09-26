Class {
	#name : #CobolDataTypeClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataTypeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataTypeClause: self
]

{ #category : #generated }
CobolDataTypeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataTypeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataTypeClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataTypeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
