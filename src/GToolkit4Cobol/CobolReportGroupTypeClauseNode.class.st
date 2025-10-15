Class {
	#name : 'CobolReportGroupTypeClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'reportGroupType'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeClause: self
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupTypeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> nodeVariables [
	^ #(#reportGroupType)
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> reportGroupType [
	^ reportGroupType
]

{ #category : 'generated' }
CobolReportGroupTypeClauseNode >> reportGroupType: aCobolProgramNode [
	self reportGroupType notNil ifTrue: [ self reportGroupType parent: nil ].
	reportGroupType := aCobolProgramNode.
	self reportGroupType notNil ifTrue: [ self reportGroupType parent: self ]
]
