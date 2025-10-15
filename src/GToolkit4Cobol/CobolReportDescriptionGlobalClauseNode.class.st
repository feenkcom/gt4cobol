Class {
	#name : 'CobolReportDescriptionGlobalClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportDescriptionGlobalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionGlobalClause: self
]

{ #category : 'generated' }
CobolReportDescriptionGlobalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportDescriptionGlobalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportDescriptionGlobalClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportDescriptionGlobalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
