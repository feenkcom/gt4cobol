Class {
	#name : #CobolLocalStorageSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'periods',
		'entries',
		'localName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLocalStorageSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalStorageSection: self
]

{ #category : #generated }
CobolLocalStorageSectionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : #generated }
CobolLocalStorageSectionNode >> compositeTokenVariables [
	^ #(#keywords #periods)
]

{ #category : #generated }
CobolLocalStorageSectionNode >> entries [
	^ entries
]

{ #category : #generated }
CobolLocalStorageSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolLocalStorageSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLocalStorageSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLocalStorageSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolLocalStorageSectionNode >> localName [
	^ localName
]

{ #category : #generated }
CobolLocalStorageSectionNode >> localName: aCobolIdentifierNode [
	self localName notNil ifTrue: [ self localName parent: nil ].
	localName := aCobolIdentifierNode.
	self localName notNil ifTrue: [ self localName parent: self ]
]

{ #category : #generated }
CobolLocalStorageSectionNode >> nodeVariables [
	^ #(#localName)
]

{ #category : #generated }
CobolLocalStorageSectionNode >> periods [
	^ periods
]

{ #category : #generated }
CobolLocalStorageSectionNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]
