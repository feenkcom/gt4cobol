Class {
	#name : #CSDDefineNode,
	#superclass : #CSDProgramNode,
	#instVars : [
		'defineToken',
		'properties'
	],
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDDefineNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefine: self
]

{ #category : #generated }
CSDDefineNode >> compositeNodeVariables [
	^ #(#properties)
]

{ #category : #generated }
CSDDefineNode >> defineToken [
	^ defineToken
]

{ #category : #generated }
CSDDefineNode >> defineToken: aSmaCCToken [
	defineToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CSDDefineNode >> initialize [
	super initialize.
	properties := OrderedCollection new: 2.
]

{ #category : #generated }
CSDDefineNode >> properties [
	^ properties
]

{ #category : #generated }
CSDDefineNode >> properties: anOrderedCollection [
	self setParents: self properties to: nil.
	properties := anOrderedCollection.
	self setParents: self properties to: self
]

{ #category : #generated }
CSDDefineNode >> tokenVariables [
	^ #(#defineToken)
]
