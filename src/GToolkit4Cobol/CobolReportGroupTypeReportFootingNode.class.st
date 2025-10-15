Class {
	#name : 'CobolReportGroupTypeReportFootingNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupTypeReportFootingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeReportFooting: self
]

{ #category : 'generated' }
CobolReportGroupTypeReportFootingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupTypeReportFootingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupTypeReportFootingNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupTypeReportFootingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
