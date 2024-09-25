Class {
	#name : #CobolDataExternalClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'value'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataExternalClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataExternalClause: self
]

{ #category : #generated }
CobolDataExternalClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataExternalClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataExternalClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataExternalClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataExternalClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolDataExternalClauseNode >> value [
	^ value
]

{ #category : #generated }
CobolDataExternalClauseNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
