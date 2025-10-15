Class {
	#name : 'CobolCombinedComparisonExpressionNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'lefts',
		'ops',
		'keywords',
		'not',
		'rights'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCombinedComparisonExpression: self
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> compositeTokenVariables [
	^ #(#ops #keywords #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
CobolCombinedComparisonExpressionNode >> initialize [
	super initialize.
	lefts := OrderedCollection new: 2.
	ops := OrderedCollection new: 2.
	keywords := OrderedCollection new: 2.
	rights := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> lefts [
	^ lefts
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> lefts: anOrderedCollection [
	self setParent: self lefts to: nil.
	lefts := anOrderedCollection.
	self setParent: self lefts to: self
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> not [
	^ not
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> not: aSmaCCToken [
	not := aSmaCCToken
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> ops [
	^ ops
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> ops: anOrderedCollection [
	ops := anOrderedCollection
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> otherVariables [
	^ #(#lefts #rights)
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> rights [
	^ rights
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> rights: anOrderedCollection [
	self setParent: self rights to: nil.
	rights := anOrderedCollection.
	self setParent: self rights to: self
]

{ #category : 'generated' }
CobolCombinedComparisonExpressionNode >> tokenVariables [
	^ #(#not)
]
