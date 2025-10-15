Class {
	#name : 'CobolDateWrittenParagraphNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'period',
		'descriptions'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDateWrittenParagraph: self
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> descriptions [
	^ descriptions
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
CobolDateWrittenParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> period [
	^ period
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolDateWrittenParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
