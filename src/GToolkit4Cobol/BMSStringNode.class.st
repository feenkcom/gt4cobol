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

{ #category : #accessing }
BMSStringNode >> literalValue [
	| string |
	string := value source.
	^ string allButFirst allButLast
		copyReplaceAll: (String new: 2 withAll: string first)
		with: (String with: string first)
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
