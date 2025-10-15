Class {
	#name : 'CobolReportGroupNextGroupClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'groupNumber',
		'advance'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupNextGroupClause: self
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> advance [
	^ advance
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> advance: aCobolLiteralNode [
	self advance notNil ifTrue: [ self advance parent: nil ].
	advance := aCobolLiteralNode.
	self advance notNil ifTrue: [ self advance parent: self ]
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> groupNumber [
	^ groupNumber
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> groupNumber: aCobolLiteralNode [
	self groupNumber notNil ifTrue: [ self groupNumber parent: nil ].
	groupNumber := aCobolLiteralNode.
	self groupNumber notNil ifTrue: [ self groupNumber parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolReportGroupNextGroupClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupNextGroupClauseNode >> nodeVariables [
	^ #(#groupNumber #advance)
]
