Class {
	#name : #CobolReceiveWithNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReceiveWithNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveWith: self
]

{ #category : #generated }
CobolReceiveWithNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReceiveWithNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReceiveWithNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReceiveWithNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
