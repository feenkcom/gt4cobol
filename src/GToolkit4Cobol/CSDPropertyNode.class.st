Class {
	#name : #CSDPropertyNode,
	#superclass : #CSDProgramNode,
	#instVars : [
		'name',
		'leftParen',
		'value',
		'rightParen'
	],
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDPropertyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProperty: self
]

{ #category : #generated }
CSDPropertyNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSDPropertyNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSDPropertyNode >> name [
	^ name
]

{ #category : #generated }
CSDPropertyNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSDPropertyNode >> nodeVariables [
	^ #(#value)
]

{ #category : #accessing }
CSDPropertyNode >> propertyName [
	^ name source
]

{ #category : #generated }
CSDPropertyNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSDPropertyNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSDPropertyNode >> tokenVariables [
	^ #(#name #leftParen #rightParen)
]

{ #category : #generated }
CSDPropertyNode >> value [
	^ value
]

{ #category : #generated }
CSDPropertyNode >> value: aCSDExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCSDExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
