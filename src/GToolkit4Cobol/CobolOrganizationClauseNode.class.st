Class {
	#name : #CobolOrganizationClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolOrganizationClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOrganizationClause: self
]

{ #category : #generated }
CobolOrganizationClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolOrganizationClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolOrganizationClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolOrganizationClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
