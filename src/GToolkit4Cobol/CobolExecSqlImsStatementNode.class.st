Class {
	#name : #CobolExecSqlImsStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_source'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecSqlImsStatementNode >> _source [
	^ _source
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> _source: aSmaCCToken [
	_source := aSmaCCToken
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecSqlImsStatement: self
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExecSqlImsStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolExecSqlImsStatementNode >> tokenVariables [
	^ #(#_source)
]
