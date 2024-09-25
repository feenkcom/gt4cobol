Class {
	#name : #CobolAllSubscriptNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolAllSubscriptNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAllSubscript: self
]

{ #category : #generated }
CobolAllSubscriptNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolAllSubscriptNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolAllSubscriptNode >> tokenVariables [
	^ #(#keyword)
]
