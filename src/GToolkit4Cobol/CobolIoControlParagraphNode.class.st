Class {
	#name : #CobolIoControlParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'periods',
		'clauses',
		'_filename'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolIoControlParagraphNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolIoControlParagraphNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

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
	^ #(#_filename)
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
