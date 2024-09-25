Class {
	#name : #CobolEvaluateStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'selects',
		'whens',
		'other'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolEvaluateStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEvaluateStatement: self
]

{ #category : #generated }
CobolEvaluateStatementNode >> compositeNodeVariables [
	^ #(#selects #whens)
]

{ #category : #generated }
CobolEvaluateStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolEvaluateStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	selects := OrderedCollection new: 2.
	whens := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEvaluateStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEvaluateStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEvaluateStatementNode >> nodeVariables [
	^ #(#other)
]

{ #category : #generated }
CobolEvaluateStatementNode >> other [
	^ other
]

{ #category : #generated }
CobolEvaluateStatementNode >> other: aCobolEvaluateWhenOtherNode [
	self other notNil ifTrue: [ self other parent: nil ].
	other := aCobolEvaluateWhenOtherNode.
	self other notNil ifTrue: [ self other parent: self ]
]

{ #category : #generated }
CobolEvaluateStatementNode >> selects [
	^ selects
]

{ #category : #generated }
CobolEvaluateStatementNode >> selects: anOrderedCollection [
	self setParents: self selects to: nil.
	selects := anOrderedCollection.
	self setParents: self selects to: self
]

{ #category : #generated }
CobolEvaluateStatementNode >> whens [
	^ whens
]

{ #category : #generated }
CobolEvaluateStatementNode >> whens: anOrderedCollection [
	self setParents: self whens to: nil.
	whens := anOrderedCollection.
	self setParents: self whens to: self
]
