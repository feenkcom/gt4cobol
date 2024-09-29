Class {
	#name : #BMSFileNode,
	#superclass : #BMSProgramNode,
	#instVars : [
		'macros'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
BMSFileNode >> compositeNodeVariables [
	^ #(#macros)
]

{ #category : #'generated-initialize-release' }
BMSFileNode >> initialize [
	super initialize.
	macros := OrderedCollection new: 2.
]

{ #category : #generated }
BMSFileNode >> macros [
	^ macros
]

{ #category : #generated }
BMSFileNode >> macros: anOrderedCollection [
	self setParents: self macros to: nil.
	macros := anOrderedCollection.
	self setParents: self macros to: self
]
