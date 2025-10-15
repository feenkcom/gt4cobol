Class {
	#name : 'CobolCloseFileNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'fileName',
		'keywords',
		'files'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCloseFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCloseFile: self
]

{ #category : 'generated' }
CobolCloseFileNode >> compositeNodeVariables [
	^ #(#files)
]

{ #category : 'generated' }
CobolCloseFileNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolCloseFileNode >> fileName [
	^ fileName
]

{ #category : 'generated' }
CobolCloseFileNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : 'generated' }
CobolCloseFileNode >> files [
	^ files
]

{ #category : 'generated' }
CobolCloseFileNode >> files: anOrderedCollection [
	self setParents: self files to: nil.
	files := anOrderedCollection.
	self setParents: self files to: self
]

{ #category : 'generated-initialize-release' }
CobolCloseFileNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	files := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCloseFileNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolCloseFileNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolCloseFileNode >> nodeVariables [
	^ #(#fileName)
]
