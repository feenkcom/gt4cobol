Class {
	#name : 'CobolReceiveStatusNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'status'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReceiveStatusNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveStatus: self
]

{ #category : 'generated' }
CobolReceiveStatusNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReceiveStatusNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReceiveStatusNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReceiveStatusNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReceiveStatusNode >> nodeVariables [
	^ #(#status)
]

{ #category : 'generated' }
CobolReceiveStatusNode >> status [
	^ status
]

{ #category : 'generated' }
CobolReceiveStatusNode >> status: aCobolExpressionNode [
	self status notNil ifTrue: [ self status parent: nil ].
	status := aCobolExpressionNode.
	self status notNil ifTrue: [ self status parent: self ]
]
