Class {
	#name : #CobolDataDivisionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'sections'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataDivisionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataDivision: self
]

{ #category : #generated }
CobolDataDivisionNode >> compositeNodeVariables [
	^ #(#sections)
]

{ #category : #generated }
CobolDataDivisionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataDivisionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sections := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataDivisionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataDivisionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataDivisionNode >> period [
	^ period
]

{ #category : #generated }
CobolDataDivisionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDataDivisionNode >> sections [
	^ sections
]

{ #category : #generated }
CobolDataDivisionNode >> sections: anOrderedCollection [
	self setParents: self sections to: nil.
	sections := anOrderedCollection.
	self setParents: self sections to: self
]

{ #category : #generated }
CobolDataDivisionNode >> tokenVariables [
	^ #(#period)
]
