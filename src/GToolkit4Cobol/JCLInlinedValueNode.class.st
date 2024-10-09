Class {
	#name : #JCLInlinedValueNode,
	#superclass : #JCLValueNode,
	#instVars : [
		'star',
		'input'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLInlinedValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInlinedValue: self
]

{ #category : #generated }
JCLInlinedValueNode >> input [
	^ input
]

{ #category : #generated }
JCLInlinedValueNode >> input: aSmaCCToken [
	input := aSmaCCToken
]

{ #category : #generated }
JCLInlinedValueNode >> star [
	^ star
]

{ #category : #generated }
JCLInlinedValueNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : #generated }
JCLInlinedValueNode >> tokenVariables [
	^ #(#star #input)
]
