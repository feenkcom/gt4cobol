Class {
	#name : #CobolWorkingStorageSectionNode,
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
CobolWorkingStorageSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWorkingStorageSection: self
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> compositeNodeVariables [
	^ #(#entries #execSqls)
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> entries [
	^ entries
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> execSqls [
	^ execSqls
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> execSqls: anOrderedCollection [
	self setParents: self execSqls to: nil.
	execSqls := anOrderedCollection.
	self setParents: self execSqls to: self
]

{ #category : #'generated-initialize-release' }
CobolWorkingStorageSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
	execSqls := OrderedCollection new: 2.
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolWorkingStorageSectionNode >> tokenVariables [
	^ #(#period)
]
