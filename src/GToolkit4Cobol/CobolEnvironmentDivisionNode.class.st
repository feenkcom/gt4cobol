Class {
	#name : #CobolEnvironmentDivisionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'sections'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolEnvironmentDivisionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnvironmentDivision: self
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> compositeNodeVariables [
	^ #(#sections)
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolEnvironmentDivisionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sections := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> period [
	^ period
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> sections [
	^ sections
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> sections: anOrderedCollection [
	self setParents: self sections to: nil.
	sections := anOrderedCollection.
	self setParents: self sections to: self
]

{ #category : #generated }
CobolEnvironmentDivisionNode >> tokenVariables [
	^ #(#period)
]
