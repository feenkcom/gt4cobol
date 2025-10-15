Class {
	#name : 'CobolReportGroupSumClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'names',
		'commas',
		'dataNames'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupSumClause: self
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> commas [
	^ commas
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> compositeNodeVariables [
	^ #(#names #dataNames)
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> compositeTokenVariables [
	^ #(#keywords #commas)
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> dataNames [
	^ dataNames
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> dataNames: anOrderedCollection [
	self setParents: self dataNames to: nil.
	dataNames := anOrderedCollection.
	self setParents: self dataNames to: self
]

{ #category : 'generated-initialize-release' }
CobolReportGroupSumClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	dataNames := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> names [
	^ names
]

{ #category : 'generated' }
CobolReportGroupSumClauseNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
