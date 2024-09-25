Class {
	#name : #CobolScreenDescriptionUsageClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionUsageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionUsageClause: self
]

{ #category : #generated }
CobolScreenDescriptionUsageClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionUsageClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionUsageClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionUsageClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
