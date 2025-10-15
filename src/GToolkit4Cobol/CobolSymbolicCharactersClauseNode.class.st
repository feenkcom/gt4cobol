Class {
	#name : 'CobolSymbolicCharactersClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'symbolicCharacters',
		'values',
		'alphabetName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbolicCharactersClause: self
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> alphabetName [
	^ alphabetName
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> alphabetName: aCobolIdentifierNode [
	self alphabetName notNil ifTrue: [ self alphabetName parent: nil ].
	alphabetName := aCobolIdentifierNode.
	self alphabetName notNil ifTrue: [ self alphabetName parent: self ]
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> compositeNodeVariables [
	^ #(#symbolicCharacters #values)
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolSymbolicCharactersClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	symbolicCharacters := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> nodeVariables [
	^ #(#alphabetName)
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> symbolicCharacters [
	^ symbolicCharacters
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> symbolicCharacters: anOrderedCollection [
	self setParents: self symbolicCharacters to: nil.
	symbolicCharacters := anOrderedCollection.
	self setParents: self symbolicCharacters to: self
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> values [
	^ values
]

{ #category : 'generated' }
CobolSymbolicCharactersClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
