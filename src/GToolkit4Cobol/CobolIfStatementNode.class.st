Class {
	#name : #CobolIfStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'if',
		'then',
		'else'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolIfStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfStatement: self
]

{ #category : #generated }
CobolIfStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolIfStatementNode >> else [
	^ else
]

{ #category : #generated }
CobolIfStatementNode >> else: aCobolIfElseNode [
	self else notNil ifTrue: [ self else parent: nil ].
	else := aCobolIfElseNode.
	self else notNil ifTrue: [ self else parent: self ]
]

{ #category : #generated }
CobolIfStatementNode >> if [
	^ if
]

{ #category : #generated }
CobolIfStatementNode >> if: aCobolExpressionNode [
	self if notNil ifTrue: [ self if parent: nil ].
	if := aCobolExpressionNode.
	self if notNil ifTrue: [ self if parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolIfStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolIfStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolIfStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolIfStatementNode >> nodeVariables [
	^ #(#if #then #else)
]

{ #category : #generated }
CobolIfStatementNode >> then [
	^ then
]

{ #category : #generated }
CobolIfStatementNode >> then: aCobolIfThenNode [
	self then notNil ifTrue: [ self then parent: nil ].
	then := aCobolIfThenNode.
	self then notNil ifTrue: [ self then parent: self ]
]
