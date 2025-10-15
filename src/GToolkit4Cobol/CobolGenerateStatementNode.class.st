Class {
	#name : 'CobolGenerateStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keyword',
		'reportName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolGenerateStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGenerateStatement: self
]

{ #category : 'generated' }
CobolGenerateStatementNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolGenerateStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolGenerateStatementNode >> nodeVariables [
	^ #(#reportName)
]

{ #category : 'generated' }
CobolGenerateStatementNode >> reportName [
	^ reportName
]

{ #category : 'generated' }
CobolGenerateStatementNode >> reportName: aCobolExpressionNode [
	self reportName notNil ifTrue: [ self reportName parent: nil ].
	reportName := aCobolExpressionNode.
	self reportName notNil ifTrue: [ self reportName parent: self ]
]

{ #category : 'generated' }
CobolGenerateStatementNode >> tokenVariables [
	^ #(#keyword)
]
