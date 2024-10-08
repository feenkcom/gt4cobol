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

{ #category : #'as yet unclassified' }
CSDDefineNode >> name [
	^ properties first propertyName
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

{ #category : #'as yet unclassified' }
CSDDefineNode >> propertyNamed: aString [
	self properties
		do: [ :each | (each propertyName sameAs: aString) ifTrue: [ ^ each value literalValue ] ].
	^ nil
]

{ #category : #generated }
CSDDefineNode >> tokenVariables [
	^ #(#defineToken)
]
