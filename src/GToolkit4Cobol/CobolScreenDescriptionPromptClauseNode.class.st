Class {
	#name : #CobolScreenDescriptionPromptClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'prompt',
		'times'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionPromptClause: self
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionPromptClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> nodeVariables [
	^ #(#prompt #times)
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> prompt [
	^ prompt
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> prompt: aCobolExpressionNode [
	self prompt notNil ifTrue: [ self prompt parent: nil ].
	prompt := aCobolExpressionNode.
	self prompt notNil ifTrue: [ self prompt parent: self ]
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> times [
	^ times
]

{ #category : #generated }
CobolScreenDescriptionPromptClauseNode >> times: aCobolLiteralNode [
	self times notNil ifTrue: [ self times parent: nil ].
	times := aCobolLiteralNode.
	self times notNil ifTrue: [ self times parent: self ]
]
