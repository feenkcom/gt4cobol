Class {
	#name : #CobolTextLengthClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolTextLengthClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTextLengthClause: self
]

{ #category : #generated }
CobolTextLengthClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolTextLengthClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolTextLengthClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolTextLengthClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolTextLengthClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolTextLengthClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolTextLengthClauseNode >> nodeVariables [
	^ #(#dataName)
]
