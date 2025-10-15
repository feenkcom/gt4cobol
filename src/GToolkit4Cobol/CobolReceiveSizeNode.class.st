Class {
	#name : 'CobolReceiveSizeNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'_size'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReceiveSizeNode >> _size [
	^ _size
]

{ #category : 'generated' }
CobolReceiveSizeNode >> _size: aCobolExpressionNode [
	self _size notNil ifTrue: [ self _size parent: nil ].
	_size := aCobolExpressionNode.
	self _size notNil ifTrue: [ self _size parent: self ]
]

{ #category : 'generated' }
CobolReceiveSizeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveSize: self
]

{ #category : 'generated' }
CobolReceiveSizeNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReceiveSizeNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReceiveSizeNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReceiveSizeNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReceiveSizeNode >> nodeVariables [
	^ #(#_size)
]
