Class {
	#name : #CobolComparisonExpressionNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'left',
		'ops',
		'keywords',
		'not',
		'right'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolComparisonExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitComparisonExpression: self
]

{ #category : #generated }
CobolComparisonExpressionNode >> compositeTokenVariables [
	^ #(#ops #keywords #leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CobolComparisonExpressionNode >> initialize [
	super initialize.
	ops := OrderedCollection new: 2.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolComparisonExpressionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolComparisonExpressionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolComparisonExpressionNode >> left [
	^ left
]

{ #category : #generated }
CobolComparisonExpressionNode >> left: aCobolExpressionNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aCobolExpressionNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : #generated }
CobolComparisonExpressionNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
CobolComparisonExpressionNode >> not [
	^ not
]

{ #category : #generated }
CobolComparisonExpressionNode >> not: aSmaCCToken [
	not := aSmaCCToken
]

{ #category : #generated }
CobolComparisonExpressionNode >> ops [
	^ ops
]

{ #category : #generated }
CobolComparisonExpressionNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : #generated }
CobolComparisonExpressionNode >> right [
	^ right
]

{ #category : #generated }
CobolComparisonExpressionNode >> right: aCobolExpressionNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aCobolExpressionNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : #generated }
CobolComparisonExpressionNode >> tokenVariables [
	^ #(#not)
]
