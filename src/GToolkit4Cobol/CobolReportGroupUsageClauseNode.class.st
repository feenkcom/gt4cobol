Class {
	#name : #CobolReportGroupUsageClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupUsageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupUsageClause: self
]

{ #category : #generated }
CobolReportGroupUsageClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupUsageClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupUsageClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupUsageClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
