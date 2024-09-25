Class {
	#name : #CobolRerunClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count',
		'_filename',
		'name'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolRerunClauseNode >> _filename [
	^ _filename
]

{ #category : #generated }
CobolRerunClauseNode >> _filename: aCobolIdentifierNode [
	self _filename notNil ifTrue: [ self _filename parent: nil ].
	_filename := aCobolIdentifierNode.
	self _filename notNil ifTrue: [ self _filename parent: self ]
]

{ #category : #generated }
CobolRerunClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRerunClause: self
]

{ #category : #generated }
CobolRerunClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolRerunClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolRerunClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolRerunClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolRerunClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolRerunClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolRerunClauseNode >> name [
	^ name
]

{ #category : #generated }
CobolRerunClauseNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolRerunClauseNode >> nodeVariables [
	^ #(#count #_filename #name)
]
