Class {
	#name : #CobolReserveClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReserveClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReserveClause: self
]

{ #category : #generated }
CobolReserveClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReserveClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolReserveClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReserveClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReserveClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReserveClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReserveClauseNode >> nodeVariables [
	^ #(#count)
]
