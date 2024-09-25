Class {
	#name : #CobolInputOutputSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'paragraphs'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolInputOutputSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInputOutputSection: self
]

{ #category : #generated }
CobolInputOutputSectionNode >> compositeNodeVariables [
	^ #(#paragraphs)
]

{ #category : #generated }
CobolInputOutputSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolInputOutputSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
]

{ #category : #generated }
CobolInputOutputSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolInputOutputSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolInputOutputSectionNode >> paragraphs [
	^ paragraphs
]

{ #category : #generated }
CobolInputOutputSectionNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : #generated }
CobolInputOutputSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolInputOutputSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolInputOutputSectionNode >> tokenVariables [
	^ #(#period)
]
