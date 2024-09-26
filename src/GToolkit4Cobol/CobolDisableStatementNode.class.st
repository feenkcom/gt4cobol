Class {
	#name : #CobolDisableStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'cdName',
		'key'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDisableStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDisableStatement: self
]

{ #category : #generated }
CobolDisableStatementNode >> cdName [
	^ cdName
]

{ #category : #generated }
CobolDisableStatementNode >> cdName: aCobolIdentifierNode [
	self cdName notNil ifTrue: [ self cdName parent: nil ].
	cdName := aCobolIdentifierNode.
	self cdName notNil ifTrue: [ self cdName parent: self ]
]

{ #category : #generated }
CobolDisableStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDisableStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDisableStatementNode >> key [
	^ key
]

{ #category : #generated }
CobolDisableStatementNode >> key: aCobolExpressionNode [
	self key notNil ifTrue: [ self key parent: nil ].
	key := aCobolExpressionNode.
	self key notNil ifTrue: [ self key parent: self ]
]

{ #category : #generated }
CobolDisableStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDisableStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDisableStatementNode >> nodeVariables [
	^ #(#cdName #key)
]
