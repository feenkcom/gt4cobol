Class {
	#name : #CobolSelectClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'_filename'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolSelectClauseNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolSelectClauseNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolSelectClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectClause: self
]

{ #category : #generated }
CobolSelectClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolSelectClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSelectClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSelectClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSelectClauseNode >> nodeVariables [
	^ #(#_filename)
]
