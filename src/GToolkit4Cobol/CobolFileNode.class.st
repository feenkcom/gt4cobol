Class {
	#name : #CobolFileNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'units'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : #generated }
CobolFileNode >> compositeNodeVariables [
	^ #(#units)
]

{ #category : #'generated-initialize-release' }
CobolFileNode >> initialize [
	super initialize.
	units := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileNode >> units [
	^ units
]

{ #category : #generated }
CobolFileNode >> units: anOrderedCollection [
	self setParents: self units to: nil.
	units := anOrderedCollection.
	self setParents: self units to: self
]
