Class {
	#name : 'IDCAMSValueNode',
	#superclass : 'IDCAMSProgramNode',
	#instVars : [
		'name',
		'parameters'
	],
	#category : 'GToolkit4Cobol-IDCAMS',
	#package : 'GToolkit4Cobol',
	#tag : 'IDCAMS'
}

{ #category : 'generated' }
IDCAMSValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]

{ #category : 'accessing' }
IDCAMSValueNode >> findNode: aString [
	^ self parameters arguments detect: [ :each | each name value = aString ] ifNone: [  ]
]

{ #category : 'generated' }
IDCAMSValueNode >> name [
	^ name
]

{ #category : 'generated' }
IDCAMSValueNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
IDCAMSValueNode >> nodeVariables [
	^ #(#parameters)
]

{ #category : 'generated' }
IDCAMSValueNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
IDCAMSValueNode >> parameters: anIDCAMSParametersNode [
	self parameters notNil ifTrue: [ self parameters parent: nil ].
	parameters := anIDCAMSParametersNode.
	self parameters notNil ifTrue: [ self parameters parent: self ]
]

{ #category : 'generated' }
IDCAMSValueNode >> tokenVariables [
	^ #(#name)
]
