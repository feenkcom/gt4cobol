Class {
	#name : #CobolAbbreviationNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'value',
		'leftParen',
		'abbreviation',
		'rightParen',
		'keywords',
		'ops',
		'not'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolAbbreviationNode >> abbreviation [
	^ abbreviation
]

{ #category : #generated }
CobolAbbreviationNode >> abbreviation: aCobolAbbreviationNode [
	self abbreviation notNil ifTrue: [ self abbreviation parent: nil ].
	abbreviation := aCobolAbbreviationNode.
	self abbreviation notNil ifTrue: [ self abbreviation parent: self ]
]

{ #category : #generated }
CobolAbbreviationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAbbreviation: self
]

{ #category : #generated }
CobolAbbreviationNode >> compositeTokenVariables [
	^ #(#keywords #ops)
]

{ #category : #'generated-initialize-release' }
CobolAbbreviationNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	ops := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAbbreviationNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolAbbreviationNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolAbbreviationNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CobolAbbreviationNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CobolAbbreviationNode >> nodeVariables [
	^ #(#value #abbreviation)
]

{ #category : #generated }
CobolAbbreviationNode >> not [
	^ not
]

{ #category : #generated }
CobolAbbreviationNode >> not: aSmaCCToken [
	not := aSmaCCToken
]

{ #category : #generated }
CobolAbbreviationNode >> ops [
	^ ops
]

{ #category : #generated }
CobolAbbreviationNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : #generated }
CobolAbbreviationNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CobolAbbreviationNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CobolAbbreviationNode >> tokenVariables [
	^ #(#leftParen #rightParen #not)
]

{ #category : #generated }
CobolAbbreviationNode >> value [
	^ value
]

{ #category : #generated }
CobolAbbreviationNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
