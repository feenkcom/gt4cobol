Class {
	#name : #CobolIoControlParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'periods',
		'clauses',
		'fileName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolIoControlParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIoControlParagraph: self
]

{ #category : #generated }
CobolIoControlParagraphNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolIoControlParagraphNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolIoControlParagraphNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #generated }
CobolIoControlParagraphNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #generated }
CobolIoControlParagraphNode >> fileName [
	^ fileName
]

{ #category : #generated }
CobolIoControlParagraphNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolIoControlParagraphNode >> initialize [
	super initialize.
	periods := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolIoControlParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolIoControlParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolIoControlParagraphNode >> nodeVariables [
	^ #(#fileName)
]

{ #category : #generated }
CobolIoControlParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolIoControlParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolIoControlParagraphNode >> tokenVariables [
	^ #(#keyword)
]
