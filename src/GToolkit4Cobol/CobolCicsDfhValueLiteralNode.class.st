Class {
	#name : #CobolCicsDfhValueLiteralNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'keyword',
		'left',
		'value',
		'right'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCicsDfhValueLiteral: self
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> left [
	^ left
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> right [
	^ right
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> tokenVariables [
	^ #(#keyword #left #right)
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> value [
	^ value
]

{ #category : #generated }
CobolCicsDfhValueLiteralNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
