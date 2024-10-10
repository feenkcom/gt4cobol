Class {
	#name : #CobolFileControlEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'selectClause',
		'clauses'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolFileControlEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileControlEntry: self
]

{ #category : #generated }
CobolFileControlEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolFileControlEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolFileControlEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #'generated-initialize-release' }
CobolFileControlEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileControlEntryNode >> nodeVariables [
	^ #(#selectClause)
]

{ #category : #generated }
CobolFileControlEntryNode >> selectClause [
	^ selectClause
]

{ #category : #generated }
CobolFileControlEntryNode >> selectClause: aCobolSelectClauseNode [
	self selectClause notNil ifTrue: [ self selectClause parent: nil ].
	selectClause := aCobolSelectClauseNode.
	self selectClause notNil ifTrue: [ self selectClause parent: self ]
]
