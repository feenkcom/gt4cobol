Class {
	#name : #IDCAMSAssignmentNode,
	#superclass : #IDCAMSProgramNode,
	#instVars : [
		'name',
		'equals',
		'value'
	],
	#category : #'GToolkit4Cobol-IDCAMS'
}

{ #category : #generated }
IDCAMSAssignmentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignment: self
]

{ #category : #generated }
IDCAMSAssignmentNode >> equals [
	^ equals
]

{ #category : #generated }
IDCAMSAssignmentNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
IDCAMSAssignmentNode >> name [
	^ name
]

{ #category : #generated }
IDCAMSAssignmentNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
IDCAMSAssignmentNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
IDCAMSAssignmentNode >> tokenVariables [
	^ #(#name #equals)
]

{ #category : #generated }
IDCAMSAssignmentNode >> value [
	^ value
]

{ #category : #generated }
IDCAMSAssignmentNode >> value: anIDCAMSValueNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := anIDCAMSValueNode.
	self value notNil ifTrue: [ self value parent: self ]
]
