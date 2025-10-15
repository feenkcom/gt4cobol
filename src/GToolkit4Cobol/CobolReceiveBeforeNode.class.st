Class {
	#name : 'CobolReceiveBeforeNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'before'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReceiveBeforeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveBefore: self
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> before [
	^ before
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> before: aCobolExpressionNode [
	self before notNil ifTrue: [ self before parent: nil ].
	before := aCobolExpressionNode.
	self before notNil ifTrue: [ self before parent: self ]
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReceiveBeforeNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReceiveBeforeNode >> nodeVariables [
	^ #(#before)
]
