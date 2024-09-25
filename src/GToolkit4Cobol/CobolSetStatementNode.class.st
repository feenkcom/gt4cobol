Class {
	#name : #CobolSetStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'sets',
		'values'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSetStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetStatement: self
]

{ #category : #generated }
CobolSetStatementNode >> compositeNodeVariables [
	^ #(#sets #values)
]

{ #category : #generated }
CobolSetStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolSetStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sets := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSetStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSetStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSetStatementNode >> sets [
	^ sets
]

{ #category : #generated }
CobolSetStatementNode >> sets: anOrderedCollection [
	self setParents: self sets to: nil.
	sets := anOrderedCollection.
	self setParents: self sets to: self
]

{ #category : #generated }
CobolSetStatementNode >> values [
	^ values
]

{ #category : #generated }
CobolSetStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
