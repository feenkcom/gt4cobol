Class {
	#name : #CobolPaddingCharacterClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'value'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolPaddingCharacterClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPaddingCharacterClause: self
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolPaddingCharacterClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> value [
	^ value
]

{ #category : #generated }
CobolPaddingCharacterClauseNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
