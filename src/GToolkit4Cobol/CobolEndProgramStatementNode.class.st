Class {
	#name : #CobolEndProgramStatementNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'programName',
		'period'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolEndProgramStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEndProgramStatement: self
]

{ #category : #generated }
CobolEndProgramStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolEndProgramStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEndProgramStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEndProgramStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEndProgramStatementNode >> otherVariables [
	^ #(#programName)
]

{ #category : #generated }
CobolEndProgramStatementNode >> period [
	^ period
]

{ #category : #generated }
CobolEndProgramStatementNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolEndProgramStatementNode >> programName [
	^ programName
]

{ #category : #generated }
CobolEndProgramStatementNode >> programName: anObject [
	self setParent: self programName to: nil.
	programName := anObject.
	self setParent: self programName to: self
]

{ #category : #generated }
CobolEndProgramStatementNode >> tokenVariables [
	^ #(#period)
]
