Class {
	#name : 'JCLStringNode',
	#superclass : 'JCLValueNode',
	#instVars : [
		'value'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : 'accessing' }
JCLStringNode >> literalValue [
	^ value source allButFirst allButLast copyReplaceAll: '''''' with: ''''
]

{ #category : 'generated' }
JCLStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
JCLStringNode >> value [
	^ value
]

{ #category : 'generated' }
JCLStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
