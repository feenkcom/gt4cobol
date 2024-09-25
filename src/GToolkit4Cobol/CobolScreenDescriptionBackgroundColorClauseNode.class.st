Class {
	#name : #CobolScreenDescriptionBackgroundColorClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'background'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionBackgroundColorClause: self
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> background [
	^ background
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> background: aCobolExpressionNode [
	self background notNil ifTrue: [ self background parent: nil ].
	background := aCobolExpressionNode.
	self background notNil ifTrue: [ self background parent: self ]
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionBackgroundColorClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionBackgroundColorClauseNode >> nodeVariables [
	^ #(#background)
]
