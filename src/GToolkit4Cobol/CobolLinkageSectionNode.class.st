Class {
	#name : #CobolLinkageSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'entries'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolLinkageSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLinkageSection: self
]

{ #category : #generated }
CobolLinkageSectionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : #generated }
CobolLinkageSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolLinkageSectionNode >> entries [
	^ entries
]

{ #category : #generated }
CobolLinkageSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolLinkageSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLinkageSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLinkageSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolLinkageSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolLinkageSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolLinkageSectionNode >> tokenVariables [
	^ #(#period)
]
