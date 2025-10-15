Class {
	#name : 'CobolReportGroupColumnNumberClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'column'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupColumnNumberClause: self
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> column [
	^ column
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> column: aCobolLiteralNode [
	self column notNil ifTrue: [ self column parent: nil ].
	column := aCobolLiteralNode.
	self column notNil ifTrue: [ self column parent: self ]
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupColumnNumberClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupColumnNumberClauseNode >> nodeVariables [
	^ #(#column)
]
