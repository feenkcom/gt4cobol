Class {
	#name : 'CobolReportGroupSignClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupSignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupSignClause: self
]

{ #category : 'generated' }
CobolReportGroupSignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupSignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupSignClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupSignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
