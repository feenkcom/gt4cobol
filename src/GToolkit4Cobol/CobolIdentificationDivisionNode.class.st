Class {
	#name : 'CobolIdentificationDivisionNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'period',
		'programId',
		'paragraphs'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolIdentificationDivisionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIdentificationDivision: self
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> compositeNodeVariables [
	^ #(#paragraphs)
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolIdentificationDivisionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> nodeVariables [
	^ #(#programId)
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> paragraphs [
	^ paragraphs
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> period [
	^ period
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> programId [
	^ programId
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> programId: aCobolProgramIdParagraphNode [
	self programId notNil ifTrue: [ self programId parent: nil ].
	programId := aCobolProgramIdParagraphNode.
	self programId notNil ifTrue: [ self programId parent: self ]
]

{ #category : 'generated' }
CobolIdentificationDivisionNode >> tokenVariables [
	^ #(#period)
]
