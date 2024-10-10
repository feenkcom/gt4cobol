Class {
	#name : #CobolRerunClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count',
		'fileName',
		'name'
	],
	#category : #'GToolkit4Cobol-Parser'
}

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

{ #category : #generated }
CobolRerunClauseNode >> fileName [
	^ fileName
]

{ #category : #generated }
CobolRerunClauseNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
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
	^ #(#count #fileName #name)
]
