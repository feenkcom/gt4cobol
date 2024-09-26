Class {
	#name : #CobolReportGroupTypePageHeadingNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupTypePageHeadingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypePageHeading: self
]

{ #category : #generated }
CobolReportGroupTypePageHeadingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupTypePageHeadingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupTypePageHeadingNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupTypePageHeadingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
