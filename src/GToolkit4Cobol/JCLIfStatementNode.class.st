Class {
	#name : 'JCLIfStatementNode',
	#superclass : 'JCLStatementNode',
	#instVars : [
		'statements',
		'leftParen',
		'left',
		'operator',
		'right',
		'rightParen'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLIfStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfStatement: self
]

{ #category : 'generated' }
JCLIfStatementNode >> compositeNodeVariables [
	^ #(#statements #values)
]

{ #category : 'generated-initialize-release' }
JCLIfStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
JCLIfStatementNode >> left [
	^ left
]

{ #category : 'generated' }
JCLIfStatementNode >> left: aJCLValueNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aJCLValueNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
JCLIfStatementNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
JCLIfStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
JCLIfStatementNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
JCLIfStatementNode >> operator [
	^ operator
]

{ #category : 'generated' }
JCLIfStatementNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
JCLIfStatementNode >> right [
	^ right
]

{ #category : 'generated' }
JCLIfStatementNode >> right: aJCLValueNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aJCLValueNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : 'generated' }
JCLIfStatementNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
JCLIfStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
JCLIfStatementNode >> statements [
	^ statements
]

{ #category : 'generated' }
JCLIfStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
JCLIfStatementNode >> tokenVariables [
	^ #(#leftParen #operator #rightParen #slashes #operation #name)
]
