Class {
	#name : #CobolFigurativeConstantNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'keyword',
		'value'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFigurativeConstantNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFigurativeConstant: self
]

{ #category : #generated }
CobolFigurativeConstantNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolFigurativeConstantNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolFigurativeConstantNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolFigurativeConstantNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : #generated }
CobolFigurativeConstantNode >> value [
	^ value
]

{ #category : #generated }
CobolFigurativeConstantNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
