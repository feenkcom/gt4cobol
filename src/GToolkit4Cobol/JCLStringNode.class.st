Class {
	#name : #JCLStringNode,
	#superclass : #JCLValueNode,
	#instVars : [
		'value'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : #generated }
JCLStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
JCLStringNode >> value [
	^ value
]

{ #category : #generated }
JCLStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
