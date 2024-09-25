Class {
	#name : #CobolFileSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'fileDescriptions'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolFileSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileSection: self
]

{ #category : #generated }
CobolFileSectionNode >> compositeNodeVariables [
	^ #(#fileDescriptions)
]

{ #category : #generated }
CobolFileSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolFileSectionNode >> fileDescriptions [
	^ fileDescriptions
]

{ #category : #generated }
CobolFileSectionNode >> fileDescriptions: anOrderedCollection [
	self setParents: self fileDescriptions to: nil.
	fileDescriptions := anOrderedCollection.
	self setParents: self fileDescriptions to: self
]

{ #category : #'generated-initialize-release' }
CobolFileSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileDescriptions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolFileSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolFileSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolFileSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolFileSectionNode >> tokenVariables [
	^ #(#period)
]
