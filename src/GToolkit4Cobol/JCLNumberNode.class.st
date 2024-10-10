Class {
	#name : #JCLNumberNode,
	#superclass : #JCLValueNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #accessing }
JCLNumberNode >> literalValue [
	^ value source asNumber
]

{ #category : #generated }
JCLNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
JCLNumberNode >> value [
	^ value
]

{ #category : #generated }
JCLNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
