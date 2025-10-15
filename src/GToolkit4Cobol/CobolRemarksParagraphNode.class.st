Class {
	#name : 'CobolRemarksParagraphNode',
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
CobolRemarksParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRemarksParagraph: self
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> descriptions [
	^ descriptions
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
CobolRemarksParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> period [
	^ period
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolRemarksParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
