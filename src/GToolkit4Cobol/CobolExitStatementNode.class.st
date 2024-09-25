Class {
	#name : #CobolExitStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolExitStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExitStatement: self
]

{ #category : #generated }
CobolExitStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExitStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExitStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExitStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
