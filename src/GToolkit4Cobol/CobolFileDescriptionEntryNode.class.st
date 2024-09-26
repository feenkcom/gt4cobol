Class {
	#name : #CobolFileDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'_filename',
		'clauses',
		'periods',
		'entries'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFileDescriptionEntryNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileDescriptionEntry: self
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses #entries)
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> entries [
	^ entries
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolFileDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> nodeVariables [
	^ #(#_filename)
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> periods [
	^ periods
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> tokenVariables [
	^ #(#keyword)
]
