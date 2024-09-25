Class {
	#name : #CobolEvaluateWhenPhraseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'whens',
		'statements'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEvaluateWhenPhrase: self
]

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> compositeNodeVariables [
	^ #(#whens #statements)
]

{ #category : #'generated-initialize-release' }
CobolEvaluateWhenPhraseNode >> initialize [
	super initialize.
	whens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> statements [
	^ statements
]

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> whens [
	^ whens
]

{ #category : #generated }
CobolEvaluateWhenPhraseNode >> whens: anOrderedCollection [
	self setParents: self whens to: nil.
	whens := anOrderedCollection.
	self setParents: self whens to: self
]
