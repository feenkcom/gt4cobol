Class {
	#name : #CobolCollatingSequenceClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'alphabetNames',
		'nationalName',
		'alphanumericName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolCollatingSequenceClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCollatingSequenceClause: self
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> alphabetNames [
	^ alphabetNames
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> alphabetNames: anOrderedCollection [
	self setParents: self alphabetNames to: nil.
	alphabetNames := anOrderedCollection.
	self setParents: self alphabetNames to: self
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> alphanumericName [
	^ alphanumericName
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> alphanumericName: aCobolIdentifierNode [
	self alphanumericName notNil ifTrue: [ self alphanumericName parent: nil ].
	alphanumericName := aCobolIdentifierNode.
	self alphanumericName notNil ifTrue: [ self alphanumericName parent: self ]
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> compositeNodeVariables [
	^ #(#alphabetNames)
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolCollatingSequenceClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	alphabetNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> nationalName [
	^ nationalName
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> nationalName: aCobolIdentifierNode [
	self nationalName notNil ifTrue: [ self nationalName parent: nil ].
	nationalName := aCobolIdentifierNode.
	self nationalName notNil ifTrue: [ self nationalName parent: self ]
]

{ #category : #generated }
CobolCollatingSequenceClauseNode >> nodeVariables [
	^ #(#nationalName #alphanumericName)
]
