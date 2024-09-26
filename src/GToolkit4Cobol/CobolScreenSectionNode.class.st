Class {
	#name : #CobolScreenSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'entries'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenSection: self
]

{ #category : #generated }
CobolScreenSectionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : #generated }
CobolScreenSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolScreenSectionNode >> entries [
	^ entries
]

{ #category : #generated }
CobolScreenSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolScreenSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolScreenSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolScreenSectionNode >> tokenVariables [
	^ #(#period)
]
