Class {
	#name : #CobolEnableStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'cdName',
		'enable'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolEnableStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnableStatement: self
]

{ #category : #generated }
CobolEnableStatementNode >> cdName [
	^ cdName
]

{ #category : #generated }
CobolEnableStatementNode >> cdName: aCobolIdentifierNode [
	self cdName notNil ifTrue: [ self cdName parent: nil ].
	cdName := aCobolIdentifierNode.
	self cdName notNil ifTrue: [ self cdName parent: self ]
]

{ #category : #generated }
CobolEnableStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolEnableStatementNode >> enable [
	^ enable
]

{ #category : #generated }
CobolEnableStatementNode >> enable: aCobolExpressionNode [
	self enable notNil ifTrue: [ self enable parent: nil ].
	enable := aCobolExpressionNode.
	self enable notNil ifTrue: [ self enable parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolEnableStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEnableStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEnableStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEnableStatementNode >> nodeVariables [
	^ #(#cdName #enable)
]
