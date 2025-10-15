Class {
	#name : 'CobolReportDescriptionHeadingClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'count'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionHeadingClause: self
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> count [
	^ count
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> nodeVariables [
	^ #(#count)
]

{ #category : 'generated' }
CobolReportDescriptionHeadingClauseNode >> tokenVariables [
	^ #(#keyword)
]
