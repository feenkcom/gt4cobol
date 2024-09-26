Class {
	#name : #CobolReportDescriptionFirstDetailClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionFirstDetailClause: self
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReportDescriptionFirstDetailClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportDescriptionFirstDetailClauseNode >> nodeVariables [
	^ #(#count)
]
