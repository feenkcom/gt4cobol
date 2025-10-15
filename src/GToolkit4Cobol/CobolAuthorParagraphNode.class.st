Class {
	#name : 'CobolAuthorParagraphNode',
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
CobolAuthorParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAuthorParagraph: self
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> descriptions [
	^ descriptions
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
CobolAuthorParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> period [
	^ period
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolAuthorParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
