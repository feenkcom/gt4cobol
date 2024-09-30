Class {
	#name : #BMSIdentifierNode,
	#superclass : #BMSValueNode,
	#instVars : [
		'name'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentifier: self
]

{ #category : #accessing }
BMSIdentifierNode >> literalValue [
	^ name value
]

{ #category : #generated }
BMSIdentifierNode >> name [
	^ name
]

{ #category : #generated }
BMSIdentifierNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
BMSIdentifierNode >> tokenVariables [
	^ #(#name)
]
