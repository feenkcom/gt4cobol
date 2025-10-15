Class {
	#name : 'JCLInlinedValueNode',
	#superclass : 'JCLValueNode',
	#instVars : [
		'star',
		'input'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLInlinedValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInlinedValue: self
]

{ #category : 'generated' }
JCLInlinedValueNode >> input [
	^ input
]

{ #category : 'generated' }
JCLInlinedValueNode >> input: aSmaCCToken [
	input := aSmaCCToken
]

{ #category : 'accessing' }
JCLInlinedValueNode >> literalValue [
	^ input source
]

{ #category : 'generated' }
JCLInlinedValueNode >> star [
	^ star
]

{ #category : 'generated' }
JCLInlinedValueNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : 'generated' }
JCLInlinedValueNode >> tokenVariables [
	^ #(#star #input)
]
