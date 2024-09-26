Class {
	#name : #CobolTerminateStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keyword',
		'reportName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolTerminateStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTerminateStatement: self
]

{ #category : #generated }
CobolTerminateStatementNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolTerminateStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolTerminateStatementNode >> nodeVariables [
	^ #(#reportName)
]

{ #category : #generated }
CobolTerminateStatementNode >> reportName [
	^ reportName
]

{ #category : #generated }
CobolTerminateStatementNode >> reportName: aCobolExpressionNode [
	self reportName notNil ifTrue: [ self reportName parent: nil ].
	reportName := aCobolExpressionNode.
	self reportName notNil ifTrue: [ self reportName parent: self ]
]

{ #category : #generated }
CobolTerminateStatementNode >> tokenVariables [
	^ #(#keyword)
]
