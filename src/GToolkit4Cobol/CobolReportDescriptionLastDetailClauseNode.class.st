Class {
	#name : #CobolReportDescriptionLastDetailClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionLastDetailClause: self
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReportDescriptionLastDetailClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportDescriptionLastDetailClauseNode >> nodeVariables [
	^ #(#count)
]
