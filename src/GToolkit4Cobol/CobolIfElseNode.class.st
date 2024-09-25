Class {
	#name : #CobolIfElseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'statements'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolIfElseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfElse: self
]

{ #category : #generated }
CobolIfElseNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
CobolIfElseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolIfElseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CobolIfElseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolIfElseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolIfElseNode >> statements [
	^ statements
]

{ #category : #generated }
CobolIfElseNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
