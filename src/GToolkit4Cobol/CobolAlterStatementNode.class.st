Class {
	#name : #CobolAlterStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword',
		'alterTos'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolAlterStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterStatement: self
]

{ #category : #generated }
CobolAlterStatementNode >> alterTos [
	^ alterTos
]

{ #category : #generated }
CobolAlterStatementNode >> alterTos: anOrderedCollection [
	self setParents: self alterTos to: nil.
	alterTos := anOrderedCollection.
	self setParents: self alterTos to: self
]

{ #category : #generated }
CobolAlterStatementNode >> compositeNodeVariables [
	^ #(#alterTos)
]

{ #category : #'generated-initialize-release' }
CobolAlterStatementNode >> initialize [
	super initialize.
	alterTos := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAlterStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolAlterStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolAlterStatementNode >> tokenVariables [
	^ #(#keyword)
]
