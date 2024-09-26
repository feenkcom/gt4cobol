Class {
	#name : #CobolReportGroupLineNumberClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'pageNumber',
		'keywords',
		'advance'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupLineNumberClause: self
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> advance [
	^ advance
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> advance: aCobolLiteralNode [
	self advance notNil ifTrue: [ self advance parent: nil ].
	advance := aCobolLiteralNode.
	self advance notNil ifTrue: [ self advance parent: self ]
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupLineNumberClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> nodeVariables [
	^ #(#pageNumber #advance)
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> pageNumber [
	^ pageNumber
]

{ #category : #generated }
CobolReportGroupLineNumberClauseNode >> pageNumber: aCobolLiteralNode [
	self pageNumber notNil ifTrue: [ self pageNumber parent: nil ].
	pageNumber := aCobolLiteralNode.
	self pageNumber notNil ifTrue: [ self pageNumber parent: self ]
]
