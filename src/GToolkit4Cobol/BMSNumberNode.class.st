Class {
	#name : #BMSNumberNode,
	#superclass : #BMSValueNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #generated }
BMSNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
BMSNumberNode >> value [
	^ value
]

{ #category : #generated }
BMSNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
