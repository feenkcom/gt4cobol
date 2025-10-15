Class {
	#name : 'CobolReportGroupTypeReportHeadingNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupTypeReportHeadingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeReportHeading: self
]

{ #category : 'generated' }
CobolReportGroupTypeReportHeadingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupTypeReportHeadingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupTypeReportHeadingNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupTypeReportHeadingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
