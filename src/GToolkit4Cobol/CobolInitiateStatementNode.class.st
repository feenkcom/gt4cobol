Class {
	#name : #CobolInitiateStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword',
		'reportNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolInitiateStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInitiateStatement: self
]

{ #category : #generated }
CobolInitiateStatementNode >> compositeNodeVariables [
	^ #(#reportNames)
]

{ #category : #'generated-initialize-release' }
CobolInitiateStatementNode >> initialize [
	super initialize.
	reportNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolInitiateStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolInitiateStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolInitiateStatementNode >> reportNames [
	^ reportNames
]

{ #category : #generated }
CobolInitiateStatementNode >> reportNames: anOrderedCollection [
	self setParents: self reportNames to: nil.
	reportNames := anOrderedCollection.
	self setParents: self reportNames to: self
]

{ #category : #generated }
CobolInitiateStatementNode >> tokenVariables [
	^ #(#keyword)
]
