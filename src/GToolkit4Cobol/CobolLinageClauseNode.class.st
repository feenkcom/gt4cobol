Class {
	#name : #CobolLinageClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count',
		'dataNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolLinageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLinageClause: self
]

{ #category : #generated }
CobolLinageClauseNode >> compositeNodeVariables [
	^ #(#dataNames)
]

{ #category : #generated }
CobolLinageClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolLinageClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolLinageClauseNode >> count: aCobolExpressionNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolExpressionNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
CobolLinageClauseNode >> dataNames [
	^ dataNames
]

{ #category : #generated }
CobolLinageClauseNode >> dataNames: anOrderedCollection [
	self setParents: self dataNames to: nil.
	dataNames := anOrderedCollection.
	self setParents: self dataNames to: self
]

{ #category : #'generated-initialize-release' }
CobolLinageClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	dataNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLinageClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLinageClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolLinageClauseNode >> nodeVariables [
	^ #(#count)
]
