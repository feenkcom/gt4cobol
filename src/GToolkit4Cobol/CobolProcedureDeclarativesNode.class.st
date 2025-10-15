Class {
	#name : 'CobolProcedureDeclarativesNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'periods',
		'headers',
		'statements',
		'sentences',
		'paragraphs'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureDeclaratives: self
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> compositeNodeVariables [
	^ #(#headers #statements #sentences #paragraphs)
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> compositeTokenVariables [
	^ #(#keywords #periods)
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> headers [
	^ headers
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> headers: anOrderedCollection [
	self setParents: self headers to: nil.
	headers := anOrderedCollection.
	self setParents: self headers to: self
]

{ #category : 'generated-initialize-release' }
CobolProcedureDeclarativesNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	headers := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	sentences := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> paragraphs [
	^ paragraphs
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> periods [
	^ periods
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> sentences [
	^ sentences
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> sentences: anOrderedCollection [
	self setParents: self sentences to: nil.
	sentences := anOrderedCollection.
	self setParents: self sentences to: self
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> statements [
	^ statements
]

{ #category : 'generated' }
CobolProcedureDeclarativesNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
