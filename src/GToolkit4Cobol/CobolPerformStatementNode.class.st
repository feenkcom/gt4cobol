Class {
	#name : #CobolPerformStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'statements',
		'count',
		'until',
		'clauses',
		'procedureName',
		'thru'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolPerformStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPerformStatement: self
]

{ #category : #generated }
CobolPerformStatementNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolPerformStatementNode >> clauses: anOrderedCollection [
	self setParent: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParent: self clauses to: self
]

{ #category : #generated }
CobolPerformStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
CobolPerformStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolPerformStatementNode >> count [
	^ count
]

{ #category : #generated }
CobolPerformStatementNode >> count: aCobolExpressionNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolExpressionNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolPerformStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolPerformStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolPerformStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolPerformStatementNode >> nodeVariables [
	^ #(#count #until #procedureName #thru)
]

{ #category : #generated }
CobolPerformStatementNode >> otherVariables [
	^ #(#clauses)
]

{ #category : #generated }
CobolPerformStatementNode >> procedureName [
	^ procedureName
]

{ #category : #generated }
CobolPerformStatementNode >> procedureName: aCobolProgramNode [
	self procedureName notNil ifTrue: [ self procedureName parent: nil ].
	procedureName := aCobolProgramNode.
	self procedureName notNil ifTrue: [ self procedureName parent: self ]
]

{ #category : #generated }
CobolPerformStatementNode >> statements [
	^ statements
]

{ #category : #generated }
CobolPerformStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
CobolPerformStatementNode >> thru [
	^ thru
]

{ #category : #generated }
CobolPerformStatementNode >> thru: aCobolProgramNode [
	self thru notNil ifTrue: [ self thru parent: nil ].
	thru := aCobolProgramNode.
	self thru notNil ifTrue: [ self thru parent: self ]
]

{ #category : #generated }
CobolPerformStatementNode >> until [
	^ until
]

{ #category : #generated }
CobolPerformStatementNode >> until: aCobolExpressionNode [
	self until notNil ifTrue: [ self until parent: nil ].
	until := aCobolExpressionNode.
	self until notNil ifTrue: [ self until parent: self ]
]
