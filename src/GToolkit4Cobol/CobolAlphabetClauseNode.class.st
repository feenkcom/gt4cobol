Class {
	#name : #CobolAlphabetClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'alphabetName',
		'name',
		'values'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolAlphabetClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlphabetClause: self
]

{ #category : #generated }
CobolAlphabetClauseNode >> alphabetName [
	^ alphabetName
]

{ #category : #generated }
CobolAlphabetClauseNode >> alphabetName: aCobolIdentifierNode [
	self alphabetName notNil ifTrue: [ self alphabetName parent: nil ].
	alphabetName := aCobolIdentifierNode.
	self alphabetName notNil ifTrue: [ self alphabetName parent: self ]
]

{ #category : #generated }
CobolAlphabetClauseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CobolAlphabetClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolAlphabetClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolAlphabetClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolAlphabetClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolAlphabetClauseNode >> name [
	^ name
]

{ #category : #generated }
CobolAlphabetClauseNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolAlphabetClauseNode >> nodeVariables [
	^ #(#alphabetName #name)
]

{ #category : #generated }
CobolAlphabetClauseNode >> values [
	^ values
]

{ #category : #generated }
CobolAlphabetClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
