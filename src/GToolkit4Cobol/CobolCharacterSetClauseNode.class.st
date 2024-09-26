Class {
	#name : #CobolCharacterSetClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCharacterSetClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCharacterSetClause: self
]

{ #category : #generated }
CobolCharacterSetClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolCharacterSetClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCharacterSetClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCharacterSetClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCharacterSetClauseNode >> period [
	^ period
]

{ #category : #generated }
CobolCharacterSetClauseNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolCharacterSetClauseNode >> tokenVariables [
	^ #(#period)
]
