Class {
	#name : #CobolDataBaseSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'databaseSections'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataBaseSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataBaseSection: self
]

{ #category : #generated }
CobolDataBaseSectionNode >> compositeNodeVariables [
	^ #(#databaseSections)
]

{ #category : #generated }
CobolDataBaseSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDataBaseSectionNode >> databaseSections [
	^ databaseSections
]

{ #category : #generated }
CobolDataBaseSectionNode >> databaseSections: anOrderedCollection [
	self setParents: self databaseSections to: nil.
	databaseSections := anOrderedCollection.
	self setParents: self databaseSections to: self
]

{ #category : #'generated-initialize-release' }
CobolDataBaseSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	databaseSections := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataBaseSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataBaseSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataBaseSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolDataBaseSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDataBaseSectionNode >> tokenVariables [
	^ #(#period)
]
