Class {
	#name : 'CobolProcedureSectionNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'header',
		'period',
		'sentences',
		'paragraphs'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProcedureSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureSection: self
]

{ #category : 'generated' }
CobolProcedureSectionNode >> compositeNodeVariables [
	^ #(#sentences #paragraphs)
]

{ #category : 'generated' }
CobolProcedureSectionNode >> header [
	^ header
]

{ #category : 'generated' }
CobolProcedureSectionNode >> header: aCobolProcedureSectionHeaderNode [
	self header notNil ifTrue: [ self header parent: nil ].
	header := aCobolProcedureSectionHeaderNode.
	self header notNil ifTrue: [ self header parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolProcedureSectionNode >> initialize [
	super initialize.
	sentences := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolProcedureSectionNode >> nodeVariables [
	^ #(#header)
]

{ #category : 'generated' }
CobolProcedureSectionNode >> paragraphs [
	^ paragraphs
]

{ #category : 'generated' }
CobolProcedureSectionNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : 'generated' }
CobolProcedureSectionNode >> period [
	^ period
]

{ #category : 'generated' }
CobolProcedureSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolProcedureSectionNode >> sentences [
	^ sentences
]

{ #category : 'generated' }
CobolProcedureSectionNode >> sentences: anOrderedCollection [
	self setParents: self sentences to: nil.
	sentences := anOrderedCollection.
	self setParents: self sentences to: self
]

{ #category : 'generated' }
CobolProcedureSectionNode >> tokenVariables [
	^ #(#period)
]
