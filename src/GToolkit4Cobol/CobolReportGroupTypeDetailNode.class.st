Class {
	#name : 'CobolReportGroupTypeDetailNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupTypeDetailNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeDetail: self
]

{ #category : 'generated' }
CobolReportGroupTypeDetailNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolReportGroupTypeDetailNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolReportGroupTypeDetailNode >> tokenVariables [
	^ #(#keyword)
]
