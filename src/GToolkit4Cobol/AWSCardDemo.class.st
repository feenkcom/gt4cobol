Class {
	#name : #AWSCardDemo,
	#superclass : #Object,
	#classInstVars : [
		'asts',
		'model',
		'rootDirectory',
		'copyBookDirectories'
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

{ #category : #accessing }
AWSCardDemo class >> copyBookDirectories [
	^ copyBookDirectories
]

{ #category : #accessing }
AWSCardDemo class >> copyBookDirectories: anObject [
	copyBookDirectories := anObject
]

{ #category : #accessing }
AWSCardDemo class >> model [
	^ model
]

{ #category : #accessing }
AWSCardDemo class >> model: anObject [
	model := anObject
]

{ #category : #accessing }
AWSCardDemo class >> rootDirectory [
	^ rootDirectory
]

{ #category : #accessing }
AWSCardDemo class >> rootDirectory: anObject [
	rootDirectory := anObject
]
