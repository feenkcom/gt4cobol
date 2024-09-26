Class {
	#name : #CobolAnyConditionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolAnyConditionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAnyCondition: self
]

{ #category : #generated }
CobolAnyConditionNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolAnyConditionNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolAnyConditionNode >> tokenVariables [
	^ #(#keyword)
]
