Class {
	#name : 'CobolSetToValueNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'value'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSetToValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSetToValue: self
]

{ #category : 'generated' }
CobolSetToValueNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolSetToValueNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolSetToValueNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
CobolSetToValueNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : 'generated' }
CobolSetToValueNode >> value [
	^ value
]

{ #category : 'generated' }
CobolSetToValueNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
