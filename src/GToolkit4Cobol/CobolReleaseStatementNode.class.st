Class {
	#name : #CobolReleaseStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'recordName',
		'fromName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReleaseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReleaseStatement: self
]

{ #category : #generated }
CobolReleaseStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReleaseStatementNode >> fromName [
	^ fromName
]

{ #category : #generated }
CobolReleaseStatementNode >> fromName: aCobolExpressionNode [
	self fromName notNil ifTrue: [ self fromName parent: nil ].
	fromName := aCobolExpressionNode.
	self fromName notNil ifTrue: [ self fromName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReleaseStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReleaseStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReleaseStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReleaseStatementNode >> nodeVariables [
	^ #(#recordName #fromName)
]

{ #category : #generated }
CobolReleaseStatementNode >> recordName [
	^ recordName
]

{ #category : #generated }
CobolReleaseStatementNode >> recordName: aCobolExpressionNode [
	self recordName notNil ifTrue: [ self recordName parent: nil ].
	recordName := aCobolExpressionNode.
	self recordName notNil ifTrue: [ self recordName parent: self ]
]
