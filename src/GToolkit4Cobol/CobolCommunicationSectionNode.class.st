Class {
	#name : 'CobolCommunicationSectionNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'period',
		'entries',
		'execSqls'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCommunicationSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommunicationSection: self
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> compositeNodeVariables [
	^ #(#entries #execSqls)
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> entries [
	^ entries
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> execSqls [
	^ execSqls
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> execSqls: anOrderedCollection [
	self setParents: self execSqls to: nil.
	execSqls := anOrderedCollection.
	self setParents: self execSqls to: self
]

{ #category : 'generated-initialize-release' }
CobolCommunicationSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
	execSqls := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> period [
	^ period
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolCommunicationSectionNode >> tokenVariables [
	^ #(#period)
]
