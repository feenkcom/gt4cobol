Class {
	#name : #CobolScreenDescriptionForegroundColorClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'foreground'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionForegroundColorClause: self
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> foreground [
	^ foreground
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> foreground: aCobolExpressionNode [
	self foreground notNil ifTrue: [ self foreground parent: nil ].
	foreground := aCobolExpressionNode.
	self foreground notNil ifTrue: [ self foreground parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionForegroundColorClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionForegroundColorClauseNode >> nodeVariables [
	^ #(#foreground)
]
