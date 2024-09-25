Class {
	#name : #CobolReportGroupSourceClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'_source'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReportGroupSourceClauseNode >> _source [
	^ _source
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> _source: aCobolExpressionNode [
	self _source notNil ifTrue: [ self _source parent: nil ].
	_source := aCobolExpressionNode.
	self _source notNil ifTrue: [ self _source parent: self ]
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupSourceClause: self
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupSourceClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupSourceClauseNode >> nodeVariables [
	^ #(#_source)
]
