Class {
	#name : #CobolPurgeStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword',
		'cdNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolPurgeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPurgeStatement: self
]

{ #category : #generated }
CobolPurgeStatementNode >> cdNames [
	^ cdNames
]

{ #category : #generated }
CobolPurgeStatementNode >> cdNames: anOrderedCollection [
	self setParents: self cdNames to: nil.
	cdNames := anOrderedCollection.
	self setParents: self cdNames to: self
]

{ #category : #generated }
CobolPurgeStatementNode >> compositeNodeVariables [
	^ #(#cdNames)
]

{ #category : #'generated-initialize-release' }
CobolPurgeStatementNode >> initialize [
	super initialize.
	cdNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPurgeStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolPurgeStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolPurgeStatementNode >> tokenVariables [
	^ #(#keyword)
]
