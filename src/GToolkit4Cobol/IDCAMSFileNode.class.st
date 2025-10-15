Class {
	#name : 'IDCAMSFileNode',
	#superclass : 'IDCAMSProgramNode',
	#instVars : [
		'steps'
	],
	#category : 'GToolkit4Cobol-IDCAMS',
	#package : 'GToolkit4Cobol',
	#tag : 'IDCAMS'
}

{ #category : 'generated' }
IDCAMSFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : 'generated' }
IDCAMSFileNode >> compositeNodeVariables [
	^ #(#steps)
]

{ #category : 'generated-initialize-release' }
IDCAMSFileNode >> initialize [
	super initialize.
	steps := OrderedCollection new: 2.
]

{ #category : 'generated' }
IDCAMSFileNode >> steps [
	^ steps
]

{ #category : 'generated' }
IDCAMSFileNode >> steps: anOrderedCollection [
	self setParents: self steps to: nil.
	steps := anOrderedCollection.
	self setParents: self steps to: self
]
