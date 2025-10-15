Class {
	#name : 'JCLNameNode',
	#superclass : 'JCLValueNode',
	#instVars : [
		'name',
		'values'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitName: self
]

{ #category : 'accessing' }
JCLNameNode >> literalValue [
	^ name source
]

{ #category : 'generated' }
JCLNameNode >> name [
	^ name
]

{ #category : 'generated' }
JCLNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
JCLNameNode >> nodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
JCLNameNode >> tokenVariables [
	^ #(#name)
]

{ #category : 'generated' }
JCLNameNode >> values [
	^ values
]

{ #category : 'generated' }
JCLNameNode >> values: aJCLListNode [
	self values notNil ifTrue: [ self values parent: nil ].
	values := aJCLListNode.
	self values notNil ifTrue: [ self values parent: self ]
]
