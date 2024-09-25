Class {
	#name : #CobolScreenDescriptionFromClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'from',
		'to'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionFromClause: self
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> from [
	^ from
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> from: aCobolExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aCobolExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionFromClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> nodeVariables [
	^ #(#from #to)
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> to [
	^ to
]

{ #category : #generated }
CobolScreenDescriptionFromClauseNode >> to: aCobolExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aCobolExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]
