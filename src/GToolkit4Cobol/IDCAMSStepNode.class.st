Class {
	#name : #IDCAMSStepNode,
	#superclass : #IDCAMSProgramNode,
	#instVars : [
		'name',
		'arguments'
	],
	#category : #'GToolkit4Cobol-IDCAMS'
}

{ #category : #generated }
IDCAMSStepNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStep: self
]

{ #category : #generated }
IDCAMSStepNode >> arguments [
	^ arguments
]

{ #category : #generated }
IDCAMSStepNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
IDCAMSStepNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : #'generated-initialize-release' }
IDCAMSStepNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
]

{ #category : #generated }
IDCAMSStepNode >> name [
	^ name
]

{ #category : #generated }
IDCAMSStepNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
IDCAMSStepNode >> tokenVariables [
	^ #(#name)
]
