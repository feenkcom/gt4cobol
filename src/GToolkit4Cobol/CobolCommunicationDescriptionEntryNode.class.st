Class {
	#name : #CobolCommunicationDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'cdName',
		'clauses',
		'dataNames',
		'period'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommunicationDescriptionEntry: self
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> cdName [
	^ cdName
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> cdName: aCobolIdentifierNode [
	self cdName notNil ifTrue: [ self cdName parent: nil ].
	cdName := aCobolIdentifierNode.
	self cdName notNil ifTrue: [ self cdName parent: self ]
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses #dataNames)
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> dataNames [
	^ dataNames
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> dataNames: anOrderedCollection [
	self setParents: self dataNames to: nil.
	dataNames := anOrderedCollection.
	self setParents: self dataNames to: self
]

{ #category : #'generated-initialize-release' }
CobolCommunicationDescriptionEntryNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
	dataNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> nodeVariables [
	^ #(#cdName)
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> period [
	^ period
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolCommunicationDescriptionEntryNode >> tokenVariables [
	^ #(#period)
]
