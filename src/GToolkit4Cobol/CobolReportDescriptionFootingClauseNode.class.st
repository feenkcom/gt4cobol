Class {
	#name : #CobolReportDescriptionFootingClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'count'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionFootingClause: self
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> nodeVariables [
	^ #(#count)
]

{ #category : #generated }
CobolReportDescriptionFootingClauseNode >> tokenVariables [
	^ #(#keyword)
]
