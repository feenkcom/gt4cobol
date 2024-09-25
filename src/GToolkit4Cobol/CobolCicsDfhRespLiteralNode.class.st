Class {
	#name : #CobolCicsDfhRespLiteralNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'keyword',
		'left',
		'value',
		'right'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCicsDfhRespLiteral: self
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> left [
	^ left
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> right [
	^ right
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> tokenVariables [
	^ #(#keyword #left #right)
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> value [
	^ value
]

{ #category : #generated }
CobolCicsDfhRespLiteralNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
