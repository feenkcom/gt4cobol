Class {
	#name : #CobolMergeStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_filename',
		'clauses',
		'usings',
		'givings',
		'outputProcedure',
		'outputThru',
		'alphabetNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolMergeStatementNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolMergeStatementNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolMergeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeStatement: self
]

{ #category : #generated }
CobolMergeStatementNode >> alphabetNames [
	^ alphabetNames
]

{ #category : #generated }
CobolMergeStatementNode >> alphabetNames: anOrderedCollection [
	self setParents: self alphabetNames to: nil.
	alphabetNames := anOrderedCollection.
	self setParents: self alphabetNames to: self
]

{ #category : #generated }
CobolMergeStatementNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolMergeStatementNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolMergeStatementNode >> compositeNodeVariables [
	^ #(#clauses #usings #givings #alphabetNames)
]

{ #category : #generated }
CobolMergeStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMergeStatementNode >> givings [
	^ givings
]

{ #category : #generated }
CobolMergeStatementNode >> givings: anOrderedCollection [
	self setParents: self givings to: nil.
	givings := anOrderedCollection.
	self setParents: self givings to: self
]

{ #category : #'generated-initialize-release' }
CobolMergeStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
	usings := OrderedCollection new: 2.
	givings := OrderedCollection new: 2.
	alphabetNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMergeStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMergeStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMergeStatementNode >> nodeVariables [
	^ #(#_filename #outputProcedure #outputThru)
]

{ #category : #generated }
CobolMergeStatementNode >> outputProcedure [
	^ outputProcedure
]

{ #category : #generated }
CobolMergeStatementNode >> outputProcedure: aCobolProgramNode [
	self outputProcedure notNil ifTrue: [ self outputProcedure parent: nil ].
	outputProcedure := aCobolProgramNode.
	self outputProcedure notNil ifTrue: [ self outputProcedure parent: self ]
]

{ #category : #generated }
CobolMergeStatementNode >> outputThru [
	^ outputThru
]

{ #category : #generated }
CobolMergeStatementNode >> outputThru: aCobolProgramNode [
	self outputThru notNil ifTrue: [ self outputThru parent: nil ].
	outputThru := aCobolProgramNode.
	self outputThru notNil ifTrue: [ self outputThru parent: self ]
]

{ #category : #generated }
CobolMergeStatementNode >> usings [
	^ usings
]

{ #category : #generated }
CobolMergeStatementNode >> usings: anOrderedCollection [
	self setParents: self usings to: nil.
	usings := anOrderedCollection.
	self setParents: self usings to: self
]
