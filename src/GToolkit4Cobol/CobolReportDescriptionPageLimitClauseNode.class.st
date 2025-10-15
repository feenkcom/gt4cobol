Class {
	#name : 'CobolReportDescriptionPageLimitClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'count'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionPageLimitClause: self
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> count [
	^ count
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolReportDescriptionPageLimitClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportDescriptionPageLimitClauseNode >> nodeVariables [
	^ #(#count)
]
