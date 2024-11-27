Class {
	#name : #CobolFileDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'fileName',
		'clauses',
		'periods',
		'entries',
		'execSqls'
	],
	#category : #'GToolkit4Cobol-Parser'
}

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
	^ #(#clauses #entries #execSqls)
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

{ #category : #generated }
CobolFileDescriptionEntryNode >> execSqls [
	^ execSqls
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> execSqls: anOrderedCollection [
	self setParents: self execSqls to: nil.
	execSqls := anOrderedCollection.
	self setParents: self execSqls to: self
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> fileName [
	^ fileName
]

{ #category : #generated }
CobolFileDescriptionEntryNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolFileDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
	execSqls := OrderedCollection new: 2.
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
	^ #(#fileName)
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
