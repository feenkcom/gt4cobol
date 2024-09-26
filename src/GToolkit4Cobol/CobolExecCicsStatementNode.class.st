Class {
	#name : #CobolExecCicsStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_source'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecCicsStatementNode >> _source [
	^ _source
]

{ #category : #generated }
CobolExecCicsStatementNode >> _source: aSmaCCToken [
	_source := aSmaCCToken
]

{ #category : #generated }
CobolExecCicsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecCicsStatement: self
]

{ #category : #generated }
CobolExecCicsStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExecCicsStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolExecCicsStatementNode >> tokenVariables [
	^ #(#_source)
]
