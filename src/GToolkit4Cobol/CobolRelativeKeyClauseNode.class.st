Class {
	#name : 'CobolRelativeKeyClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'relativeKeyName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRelativeKeyClause: self
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolRelativeKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> nodeVariables [
	^ #(#relativeKeyName)
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> relativeKeyName [
	^ relativeKeyName
]

{ #category : 'generated' }
CobolRelativeKeyClauseNode >> relativeKeyName: aCobolExpressionNode [
	self relativeKeyName notNil ifTrue: [ self relativeKeyName parent: nil ].
	relativeKeyName := aCobolExpressionNode.
	self relativeKeyName notNil ifTrue: [ self relativeKeyName parent: self ]
]
