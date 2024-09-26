Class {
	#name : #CobolDateCompiledParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'period',
		'descriptions'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDateCompiledParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDateCompiledParagraph: self
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> descriptions [
	^ descriptions
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CobolDateCompiledParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> period [
	^ period
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDateCompiledParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
