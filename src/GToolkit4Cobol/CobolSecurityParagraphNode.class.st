Class {
	#name : #CobolSecurityParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'period',
		'descriptions'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSecurityParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSecurityParagraph: self
]

{ #category : #generated }
CobolSecurityParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : #generated }
CobolSecurityParagraphNode >> descriptions [
	^ descriptions
]

{ #category : #generated }
CobolSecurityParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CobolSecurityParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSecurityParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolSecurityParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolSecurityParagraphNode >> period [
	^ period
]

{ #category : #generated }
CobolSecurityParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolSecurityParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
