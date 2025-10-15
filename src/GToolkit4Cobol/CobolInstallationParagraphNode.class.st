Class {
	#name : 'CobolInstallationParagraphNode',
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
CobolInstallationParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstallationParagraph: self
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> compositeTokenVariables [
	^ #(#descriptions)
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> descriptions [
	^ descriptions
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> descriptions: anOrderedCollection [
	descriptions := anOrderedCollection
]

{ #category : 'generated-initialize-release' }
CobolInstallationParagraphNode >> initialize [
	super initialize.
	descriptions := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> period [
	^ period
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolInstallationParagraphNode >> tokenVariables [
	^ #(#keyword #period)
]
