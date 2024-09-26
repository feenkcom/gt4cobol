Class {
	#name : #CobolReportClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'reportNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportClause: self
]

{ #category : #generated }
CobolReportClauseNode >> compositeNodeVariables [
	^ #(#reportNames)
]

{ #category : #generated }
CobolReportClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	reportNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportClauseNode >> reportNames [
	^ reportNames
]

{ #category : #generated }
CobolReportClauseNode >> reportNames: anOrderedCollection [
	self setParents: self reportNames to: nil.
	reportNames := anOrderedCollection.
	self setParents: self reportNames to: self
]
