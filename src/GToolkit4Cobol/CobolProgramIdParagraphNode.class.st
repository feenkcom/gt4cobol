Class {
	#name : #CobolProgramIdParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'periods',
		'programName',
		'descriptions'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolProgramIdParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgramIdParagraph: self
]

{ #category : #generated }
CobolProgramIdParagraphNode >> compositeTokenVariables [
	^ #(#keywords #periods #descriptions)
]

{ #category : #generated }
CobolProgramIdParagraphNode >> descriptions [
	^ descriptions
]

{ #category : #generated }
CobolProgramIdParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CobolProgramIdParagraphNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
	descriptions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolProgramIdParagraphNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolProgramIdParagraphNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolProgramIdParagraphNode >> otherVariables [
	^ #(#programName)
]

{ #category : #generated }
CobolProgramIdParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolProgramIdParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolProgramIdParagraphNode >> programName [
	^ programName
]

{ #category : #generated }
CobolProgramIdParagraphNode >> programName: anObject [
	self setParent: self programName to: nil.
	programName := anObject.
	self setParent: self programName to: self
]
