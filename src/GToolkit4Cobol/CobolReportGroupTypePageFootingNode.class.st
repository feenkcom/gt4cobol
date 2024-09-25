Class {
	#name : #CobolReportGroupTypePageFootingNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReportGroupTypePageFootingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypePageFooting: self
]

{ #category : #generated }
CobolReportGroupTypePageFootingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupTypePageFootingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupTypePageFootingNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupTypePageFootingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
