Class {
	#name : 'CobolBlockContainsClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'count',
		'toCount'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolBlockContainsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBlockContainsClause: self
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> count [
	^ count
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolBlockContainsClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> nodeVariables [
	^ #(#count #toCount)
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> toCount [
	^ toCount
]

{ #category : 'generated' }
CobolBlockContainsClauseNode >> toCount: aCobolLiteralNode [
	self toCount notNil ifTrue: [ self toCount parent: nil ].
	toCount := aCobolLiteralNode.
	self toCount notNil ifTrue: [ self toCount parent: self ]
]
