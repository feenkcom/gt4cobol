Class {
	#name : 'CobolReportGroupBlankWhenZeroClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupBlankWhenZeroClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupBlankWhenZeroClause: self
]

{ #category : 'generated' }
CobolReportGroupBlankWhenZeroClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupBlankWhenZeroClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupBlankWhenZeroClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupBlankWhenZeroClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
