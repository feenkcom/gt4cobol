Class {
	#name : #CobolLinkageSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'entries',
		'execSqls'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLinkageSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLinkageSection: self
]

{ #category : #generated }
CobolLinkageSectionNode >> compositeNodeVariables [
	^ #(#entries #execSqls)
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

{ #category : #generated }
CobolLinkageSectionNode >> execSqls [
	^ execSqls
]

{ #category : #generated }
CobolLinkageSectionNode >> execSqls: anOrderedCollection [
	self setParents: self execSqls to: nil.
	execSqls := anOrderedCollection.
	self setParents: self execSqls to: self
]

{ #category : #'generated-initialize-release' }
CobolLinkageSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
	execSqls := OrderedCollection new: 2.
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
