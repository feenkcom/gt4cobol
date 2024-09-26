Class {
	#name : #CobolCodeSetClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'alphabetName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolCodeSetClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCodeSetClause: self
]

{ #category : #generated }
CobolCodeSetClauseNode >> alphabetName [
	^ alphabetName
]

{ #category : #generated }
CobolCodeSetClauseNode >> alphabetName: aCobolIdentifierNode [
	self alphabetName notNil ifTrue: [ self alphabetName parent: nil ].
	alphabetName := aCobolIdentifierNode.
	self alphabetName notNil ifTrue: [ self alphabetName parent: self ]
]

{ #category : #generated }
CobolCodeSetClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolCodeSetClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCodeSetClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCodeSetClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCodeSetClauseNode >> nodeVariables [
	^ #(#alphabetName)
]
