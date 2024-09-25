Class {
	#name : #CobolSentenceNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'statements',
		'period',
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSentenceNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSentence: self
]

{ #category : #generated }
CobolSentenceNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
CobolSentenceNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolSentenceNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSentenceNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSentenceNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSentenceNode >> period [
	^ period
]

{ #category : #generated }
CobolSentenceNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolSentenceNode >> statements [
	^ statements
]

{ #category : #generated }
CobolSentenceNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CobolSentenceNode >> tokenVariables [
	^ #(#period)
]
