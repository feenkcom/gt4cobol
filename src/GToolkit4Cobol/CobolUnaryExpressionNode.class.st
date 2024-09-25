Class {
	#name : #CobolUnaryExpressionNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'op',
		'value'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : #generated }
CobolUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolUnaryExpressionNode >> op [
	^ op
]

{ #category : #generated }
CobolUnaryExpressionNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
CobolUnaryExpressionNode >> tokenVariables [
	^ #(#op)
]

{ #category : #generated }
CobolUnaryExpressionNode >> value [
	^ value
]

{ #category : #generated }
CobolUnaryExpressionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
