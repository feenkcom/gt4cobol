Class {
	#name : 'BMSNumberNode',
	#superclass : 'BMSValueNode',
	#instVars : [
		'value'
	],
	#category : 'GToolkit4Cobol-BMS-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'BMS-Parser'
}

{ #category : 'generated' }
BMSNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : 'accessing' }
BMSNumberNode >> literalValue [
	^ value source asNumber
]

{ #category : 'generated' }
BMSNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
BMSNumberNode >> value [
	^ value
]

{ #category : 'generated' }
BMSNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
