Class {
	#name : #CobolCloseFileNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'_filename',
		'keywords',
		'files'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCloseFileNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolCloseFileNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolCloseFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCloseFile: self
]

{ #category : #generated }
CobolCloseFileNode >> compositeNodeVariables [
	^ #(#files)
]

{ #category : #generated }
CobolCloseFileNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolCloseFileNode >> files [
	^ files
]

{ #category : #generated }
CobolCloseFileNode >> files: anOrderedCollection [
	self setParents: self files to: nil.
	files := anOrderedCollection.
	self setParents: self files to: self
]

{ #category : #'generated-initialize-release' }
CobolCloseFileNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	files := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCloseFileNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCloseFileNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCloseFileNode >> nodeVariables [
	^ #(#_filename)
]
