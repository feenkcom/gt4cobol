Class {
	#name : 'CobolMemorySizeClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'memorySize'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolMemorySizeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemorySizeClause: self
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolMemorySizeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> memorySize [
	^ memorySize
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> memorySize: aCobolExpressionNode [
	self memorySize notNil ifTrue: [ self memorySize parent: nil ].
	memorySize := aCobolExpressionNode.
	self memorySize notNil ifTrue: [ self memorySize parent: self ]
]

{ #category : 'generated' }
CobolMemorySizeClauseNode >> nodeVariables [
	^ #(#memorySize)
]
