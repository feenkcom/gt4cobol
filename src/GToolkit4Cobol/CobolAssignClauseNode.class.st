Class {
	#name : #CobolAssignClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'assignment'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolAssignClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignClause: self
]

{ #category : #generated }
CobolAssignClauseNode >> assignment [
	^ assignment
]

{ #category : #generated }
CobolAssignClauseNode >> assignment: aCobolExpressionNode [
	self assignment notNil ifTrue: [ self assignment parent: nil ].
	assignment := aCobolExpressionNode.
	self assignment notNil ifTrue: [ self assignment parent: self ]
]

{ #category : #generated }
CobolAssignClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolAssignClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAssignClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolAssignClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolAssignClauseNode >> nodeVariables [
	^ #(#assignment)
]
