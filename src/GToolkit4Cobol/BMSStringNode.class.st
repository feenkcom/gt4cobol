Class {
	#name : #BMSStringNode,
	#superclass : #BMSValueNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : #generated }
BMSStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
BMSStringNode >> value [
	^ value
]

{ #category : #generated }
BMSStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
