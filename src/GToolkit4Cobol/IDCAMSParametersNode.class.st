Class {
	#name : 'IDCAMSParametersNode',
	#superclass : 'IDCAMSProgramNode',
	#instVars : [
		'leftParen',
		'arguments',
		'rightParen',
		'commas'
	],
	#category : 'GToolkit4Cobol-IDCAMS',
	#package : 'GToolkit4Cobol',
	#tag : 'IDCAMS'
}

{ #category : 'generated' }
IDCAMSParametersNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameters: self
]

{ #category : 'generated' }
IDCAMSParametersNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
IDCAMSParametersNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
IDCAMSParametersNode >> commas [
	^ commas
]

{ #category : 'generated' }
IDCAMSParametersNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
IDCAMSParametersNode >> compositeNodeVariables [
	^ #(#arguments)
]

{ #category : 'generated' }
IDCAMSParametersNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated-initialize-release' }
IDCAMSParametersNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
IDCAMSParametersNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
IDCAMSParametersNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
IDCAMSParametersNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
IDCAMSParametersNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
IDCAMSParametersNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
