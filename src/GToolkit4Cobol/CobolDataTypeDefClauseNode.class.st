Class {
	#name : #CobolDataTypeDefClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataTypeDefClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataTypeDefClause: self
]

{ #category : #generated }
CobolDataTypeDefClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataTypeDefClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataTypeDefClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataTypeDefClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
