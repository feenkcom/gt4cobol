Class {
	#name : #CobolReportGroupTypeControlHeadingNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'controlHeading'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeControlHeading: self
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> controlHeading [
	^ controlHeading
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> controlHeading: aCobolIdentifierNode [
	self controlHeading notNil ifTrue: [ self controlHeading parent: nil ].
	controlHeading := aCobolIdentifierNode.
	self controlHeading notNil ifTrue: [ self controlHeading parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReportGroupTypeControlHeadingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupTypeControlHeadingNode >> nodeVariables [
	^ #(#controlHeading)
]
