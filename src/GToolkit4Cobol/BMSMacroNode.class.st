Class {
	#name : #BMSMacroNode,
	#superclass : #BMSProgramNode,
	#instVars : [
		'macro',
		'fields',
		'commas',
		'name'
	],
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSMacroNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacro: self
]

{ #category : #generated }
BMSMacroNode >> commas [
	^ commas
]

{ #category : #generated }
BMSMacroNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
BMSMacroNode >> compositeNodeVariables [
	^ #(#fields)
]

{ #category : #generated }
BMSMacroNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
BMSMacroNode >> fields [
	^ fields
]

{ #category : #generated }
BMSMacroNode >> fields: anOrderedCollection [
	self setParents: self fields to: nil.
	fields := anOrderedCollection.
	self setParents: self fields to: self
]

{ #category : #'generated-initialize-release' }
BMSMacroNode >> initialize [
	super initialize.
	fields := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
BMSMacroNode >> macro [
	^ macro
]

{ #category : #generated }
BMSMacroNode >> macro: aSmaCCToken [
	macro := aSmaCCToken
]

{ #category : #generated }
BMSMacroNode >> name [
	^ name
]

{ #category : #generated }
BMSMacroNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
BMSMacroNode >> tokenVariables [
	^ #(#macro #name)
]
