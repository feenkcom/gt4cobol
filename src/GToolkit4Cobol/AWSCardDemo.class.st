Class {
	#name : #AWSCardDemo,
	#superclass : #Object,
	#classInstVars : [
		'asts'
	],
	#category : #'GToolkit4Cobol-AWS Card Demo'
}

{ #category : #accessing }
AWSCardDemo class >> asts [
	^ asts
]

{ #category : #accessing }
AWSCardDemo class >> asts: anObject [
	asts := anObject
]
