Class {
	#name : #CobolLibraryDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'libraryName',
		'clauses'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryDescriptionEntry: self
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolLibraryDescriptionEntryNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> libraryName [
	^ libraryName
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> libraryName: aCobolIdentifierNode [
	self libraryName notNil ifTrue: [ self libraryName parent: nil ].
	libraryName := aCobolIdentifierNode.
	self libraryName notNil ifTrue: [ self libraryName parent: self ]
]

{ #category : #generated }
CobolLibraryDescriptionEntryNode >> nodeVariables [
	^ #(#libraryName)
]
