Class {
	#name : #CobolPictureStringNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'pics',
		'leftParens',
		'cardinalities',
		'rightParens'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolPictureStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPictureString: self
]

{ #category : #generated }
CobolPictureStringNode >> cardinalities [
	^ cardinalities
]

{ #category : #generated }
CobolPictureStringNode >> cardinalities: anOrderedCollection [
	self setParents: self cardinalities to: nil.
	cardinalities := anOrderedCollection.
	self setParents: self cardinalities to: self
]

{ #category : #generated }
CobolPictureStringNode >> compositeNodeVariables [
	^ #(#cardinalities)
]

{ #category : #generated }
CobolPictureStringNode >> compositeTokenVariables [
	^ #(#leftParens #rightParens)
]

{ #category : #'generated-initialize-release' }
CobolPictureStringNode >> initialize [
	super initialize.
	pics := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	cardinalities := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPictureStringNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
CobolPictureStringNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
CobolPictureStringNode >> otherVariables [
	^ #(#pics)
]

{ #category : #generated }
CobolPictureStringNode >> pics [
	^ pics
]

{ #category : #generated }
CobolPictureStringNode >> pics: anOrderedCollection [
	self setParent: self pics to: nil.
	pics := anOrderedCollection.
	self setParent: self pics to: self
]

{ #category : #generated }
CobolPictureStringNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
CobolPictureStringNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]
