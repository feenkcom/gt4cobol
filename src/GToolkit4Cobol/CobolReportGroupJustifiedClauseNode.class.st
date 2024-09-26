Class {
	#name : #CobolReportGroupJustifiedClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupJustifiedClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupJustifiedClause: self
]

{ #category : #generated }
CobolReportGroupJustifiedClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupJustifiedClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupJustifiedClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupJustifiedClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
