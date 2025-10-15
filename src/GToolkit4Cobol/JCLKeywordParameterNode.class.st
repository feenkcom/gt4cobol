Class {
	#name : 'JCLKeywordParameterNode',
	#superclass : 'JCLProgramNode',
	#instVars : [
		'key',
		'equals',
		'value'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLKeywordParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitKeywordParameter: self
]

{ #category : 'generated' }
JCLKeywordParameterNode >> equals [
	^ equals
]

{ #category : 'generated' }
JCLKeywordParameterNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : 'generated' }
JCLKeywordParameterNode >> key [
	^ key
]

{ #category : 'generated' }
JCLKeywordParameterNode >> key: aSmaCCToken [
	key := aSmaCCToken
]

{ #category : 'generated' }
JCLKeywordParameterNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
JCLKeywordParameterNode >> tokenVariables [
	^ #(#key #equals)
]

{ #category : 'generated' }
JCLKeywordParameterNode >> value [
	^ value
]

{ #category : 'generated' }
JCLKeywordParameterNode >> value: aJCLValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJCLValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
