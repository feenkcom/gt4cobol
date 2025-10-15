Class {
	#name : 'CobolProgramLibrarySectionNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'period',
		'entries'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgramLibrarySection: self
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> entries [
	^ entries
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : 'generated-initialize-release' }
CobolProgramLibrarySectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> period [
	^ period
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolProgramLibrarySectionNode >> tokenVariables [
	^ #(#period)
]
