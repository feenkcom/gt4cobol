Class {
	#name : #CobolSubscriptReferenceExpressionNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'value',
		'subscript'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubscriptReferenceExpression: self
]

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> nodeVariables [
	^ #(#value #subscript)
]

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> subscript [
	^ subscript
]

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> subscript: aCobolSubscriptsNode [
	self subscript notNil ifTrue: [ self subscript parent: nil ].
	subscript := aCobolSubscriptsNode.
	self subscript notNil ifTrue: [ self subscript parent: self ]
]

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> value [
	^ value
]

{ #category : #generated }
CobolSubscriptReferenceExpressionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
