Class {
	#name : #CobolDataOccursClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count',
		'sortNames',
		'indexNames',
		'dependingOnName',
		'toCount'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataOccursClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataOccursClause: self
]

{ #category : #generated }
CobolDataOccursClauseNode >> compositeNodeVariables [
	^ #(#sortNames #indexNames)
]

{ #category : #generated }
CobolDataOccursClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDataOccursClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolDataOccursClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
CobolDataOccursClauseNode >> dependingOnName [
	^ dependingOnName
]

{ #category : #generated }
CobolDataOccursClauseNode >> dependingOnName: aCobolExpressionNode [
	self dependingOnName notNil ifTrue: [ self dependingOnName parent: nil ].
	dependingOnName := aCobolExpressionNode.
	self dependingOnName notNil ifTrue: [ self dependingOnName parent: self ]
]

{ #category : #generated }
CobolDataOccursClauseNode >> indexNames [
	^ indexNames
]

{ #category : #generated }
CobolDataOccursClauseNode >> indexNames: anOrderedCollection [
	self setParents: self indexNames to: nil.
	indexNames := anOrderedCollection.
	self setParents: self indexNames to: self
]

{ #category : #'generated-initialize-release' }
CobolDataOccursClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sortNames := OrderedCollection new: 2.
	indexNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataOccursClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataOccursClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #accessing }
CobolDataOccursClauseNode >> maxCount [
	^ (toCount ifNil: [ count ]) source asInteger
]

{ #category : #generated }
CobolDataOccursClauseNode >> nodeVariables [
	^ #(#count #dependingOnName #toCount)
]

{ #category : #generated }
CobolDataOccursClauseNode >> sortNames [
	^ sortNames
]

{ #category : #generated }
CobolDataOccursClauseNode >> sortNames: anOrderedCollection [
	self setParents: self sortNames to: nil.
	sortNames := anOrderedCollection.
	self setParents: self sortNames to: self
]

{ #category : #generated }
CobolDataOccursClauseNode >> toCount [
	^ toCount
]

{ #category : #generated }
CobolDataOccursClauseNode >> toCount: aCobolLiteralNode [
	self toCount notNil ifTrue: [ self toCount parent: nil ].
	toCount := aCobolLiteralNode.
	self toCount notNil ifTrue: [ self toCount parent: self ]
]
