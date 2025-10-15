Class {
	#name : 'BMSFieldNode',
	#superclass : 'BMSProgramNode',
	#instVars : [
		'name',
		'equals',
		'value'
	],
	#category : 'GToolkit4Cobol-BMS-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'BMS-Parser'
}

{ #category : 'generated' }
BMSFieldNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitField: self
]

{ #category : 'generated' }
BMSFieldNode >> equals [
	^ equals
]

{ #category : 'generated' }
BMSFieldNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : 'generated' }
BMSFieldNode >> name [
	^ name
]

{ #category : 'generated' }
BMSFieldNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
BMSFieldNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
BMSFieldNode >> tokenVariables [
	^ #(#name #equals)
]

{ #category : 'generated' }
BMSFieldNode >> value [
	^ value
]

{ #category : 'generated' }
BMSFieldNode >> value: aBMSValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aBMSValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
