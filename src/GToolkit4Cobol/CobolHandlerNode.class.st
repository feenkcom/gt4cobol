Class {
	#name : #CobolHandlerNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'statements',
		'when'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolHandlerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitHandler: self
]

{ #category : #generated }
CobolHandlerNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
CobolHandlerNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolHandlerNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CobolHandlerNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolHandlerNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolHandlerNode >> nodeVariables [
	^ #(#when)
]

{ #category : #generated }
CobolHandlerNode >> statements [
	^ statements
]

{ #category : #generated }
CobolHandlerNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CobolHandlerNode >> when [
	^ when
]

{ #category : #generated }
CobolHandlerNode >> when: aCobolExpressionNode [
	self when notNil ifTrue: [ self when parent: nil ].
	when := aCobolExpressionNode.
	self when notNil ifTrue: [ self when parent: self ]
]
