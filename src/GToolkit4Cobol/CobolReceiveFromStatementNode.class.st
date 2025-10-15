Class {
	#name : 'CobolReceiveFromStatementNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'name',
		'keywords',
		'dataName',
		'receiveClauses'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReceiveFromStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveFromStatement: self
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> compositeNodeVariables [
	^ #(#receiveClauses)
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> dataName [
	^ dataName
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolReceiveFromStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	receiveClauses := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> name [
	^ name
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> nodeVariables [
	^ #(#name #dataName)
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> receiveClauses [
	^ receiveClauses
]

{ #category : 'generated' }
CobolReceiveFromStatementNode >> receiveClauses: anOrderedCollection [
	self setParents: self receiveClauses to: nil.
	receiveClauses := anOrderedCollection.
	self setParents: self receiveClauses to: self
]
