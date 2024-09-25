Class {
	#name : #CobolReceiveThreadNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReceiveThreadNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveThread: self
]

{ #category : #generated }
CobolReceiveThreadNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReceiveThreadNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolReceiveThreadNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReceiveThreadNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReceiveThreadNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReceiveThreadNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReceiveThreadNode >> nodeVariables [
	^ #(#dataName)
]
