Class {
	#name : #CobolReportGroupIndicateClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReportGroupIndicateClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupIndicateClause: self
]

{ #category : #generated }
CobolReportGroupIndicateClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupIndicateClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupIndicateClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupIndicateClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
