Class {
	#name : #CobolReportGroupResetClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReportGroupResetClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupResetClause: self
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReportGroupResetClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupResetClauseNode >> nodeVariables [
	^ #(#dataName)
]
