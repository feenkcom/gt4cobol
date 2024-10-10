Class {
	#name : #CobolSortStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'fileName',
		'clauses',
		'usings',
		'givings',
		'outputProcedure',
		'outputThru',
		'inputProcedure',
		'inputThru',
		'alphabetNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSortStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSortStatement: self
]

{ #category : #generated }
CobolSortStatementNode >> alphabetNames [
	^ alphabetNames
]

{ #category : #generated }
CobolSortStatementNode >> alphabetNames: anOrderedCollection [
	self setParents: self alphabetNames to: nil.
	alphabetNames := anOrderedCollection.
	self setParents: self alphabetNames to: self
]

{ #category : #generated }
CobolSortStatementNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolSortStatementNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolSortStatementNode >> compositeNodeVariables [
	^ #(#clauses #usings #givings #alphabetNames)
]

{ #category : #generated }
CobolSortStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolSortStatementNode >> fileName [
	^ fileName
]

{ #category : #generated }
CobolSortStatementNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : #generated }
CobolSortStatementNode >> givings [
	^ givings
]

{ #category : #generated }
CobolSortStatementNode >> givings: anOrderedCollection [
	self setParents: self givings to: nil.
	givings := anOrderedCollection.
	self setParents: self givings to: self
]

{ #category : #'generated-initialize-release' }
CobolSortStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
	usings := OrderedCollection new: 2.
	givings := OrderedCollection new: 2.
	alphabetNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSortStatementNode >> inputProcedure [
	^ inputProcedure
]

{ #category : #generated }
CobolSortStatementNode >> inputProcedure: aCobolProgramNode [
	self inputProcedure notNil ifTrue: [ self inputProcedure parent: nil ].
	inputProcedure := aCobolProgramNode.
	self inputProcedure notNil ifTrue: [ self inputProcedure parent: self ]
]

{ #category : #generated }
CobolSortStatementNode >> inputThru [
	^ inputThru
]

{ #category : #generated }
CobolSortStatementNode >> inputThru: aCobolProgramNode [
	self inputThru notNil ifTrue: [ self inputThru parent: nil ].
	inputThru := aCobolProgramNode.
	self inputThru notNil ifTrue: [ self inputThru parent: self ]
]

{ #category : #generated }
CobolSortStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSortStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSortStatementNode >> nodeVariables [
	^ #(#fileName #outputProcedure #outputThru #inputProcedure #inputThru)
]

{ #category : #generated }
CobolSortStatementNode >> outputProcedure [
	^ outputProcedure
]

{ #category : #generated }
CobolSortStatementNode >> outputProcedure: aCobolProgramNode [
	self outputProcedure notNil ifTrue: [ self outputProcedure parent: nil ].
	outputProcedure := aCobolProgramNode.
	self outputProcedure notNil ifTrue: [ self outputProcedure parent: self ]
]

{ #category : #generated }
CobolSortStatementNode >> outputThru [
	^ outputThru
]

{ #category : #generated }
CobolSortStatementNode >> outputThru: aCobolProgramNode [
	self outputThru notNil ifTrue: [ self outputThru parent: nil ].
	outputThru := aCobolProgramNode.
	self outputThru notNil ifTrue: [ self outputThru parent: self ]
]

{ #category : #generated }
CobolSortStatementNode >> usings [
	^ usings
]

{ #category : #generated }
CobolSortStatementNode >> usings: anOrderedCollection [
	self setParents: self usings to: nil.
	usings := anOrderedCollection.
	self setParents: self usings to: self
]
