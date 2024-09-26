Class {
	#name : #CobolReportGroupValueClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'value'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupValueClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupValueClause: self
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReportGroupValueClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> value [
	^ value
]

{ #category : #generated }
CobolReportGroupValueClauseNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
