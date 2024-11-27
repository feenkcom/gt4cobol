Class {
	#name : #CobolExecSqlStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_source',
		'period'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecSqlStatementNode >> _source [
	^ _source
]

{ #category : #generated }
CobolExecSqlStatementNode >> _source: aSmaCCToken [
	_source := aSmaCCToken
]

{ #category : #generated }
CobolExecSqlStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecSqlStatement: self
]

{ #category : #generated }
CobolExecSqlStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExecSqlStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExecSqlStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExecSqlStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolExecSqlStatementNode >> period [
	^ period
]

{ #category : #generated }
CobolExecSqlStatementNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolExecSqlStatementNode >> tokenVariables [
	^ #(#_source #period)
]
