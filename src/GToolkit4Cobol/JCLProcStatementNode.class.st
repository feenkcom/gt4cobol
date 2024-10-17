Class {
	#name : #JCLProcStatementNode,
	#superclass : #JCLStatementNode,
	#instVars : [
		'statements'
	],
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLProcStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcStatement: self
]

{ #category : #generated }
JCLProcStatementNode >> compositeNodeVariables [
	^ #(#statements #values)
]

{ #category : #'generated-initialize-release' }
JCLProcStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
JCLProcStatementNode >> statements [
	^ statements
]

{ #category : #generated }
JCLProcStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
