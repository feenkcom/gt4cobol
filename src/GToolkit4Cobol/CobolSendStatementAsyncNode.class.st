Class {
	#name : #CobolSendStatementAsyncNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'sendLocation'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSendStatementAsyncNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSendStatementAsync: self
]

{ #category : #generated }
CobolSendStatementAsyncNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolSendStatementAsyncNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSendStatementAsyncNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSendStatementAsyncNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSendStatementAsyncNode >> nodeVariables [
	^ #(#sendLocation)
]

{ #category : #generated }
CobolSendStatementAsyncNode >> sendLocation [
	^ sendLocation
]

{ #category : #generated }
CobolSendStatementAsyncNode >> sendLocation: aCobolExpressionNode [
	self sendLocation notNil ifTrue: [ self sendLocation parent: nil ].
	sendLocation := aCobolExpressionNode.
	self sendLocation notNil ifTrue: [ self sendLocation parent: self ]
]
