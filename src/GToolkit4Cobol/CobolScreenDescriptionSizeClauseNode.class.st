Class {
	#name : 'CobolScreenDescriptionSizeClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'_size'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> _size [
	^ _size
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> _size: aCobolExpressionNode [
	self _size notNil ifTrue: [ self _size parent: nil ].
	_size := aCobolExpressionNode.
	self _size notNil ifTrue: [ self _size parent: self ]
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionSizeClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolScreenDescriptionSizeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolScreenDescriptionSizeClauseNode >> nodeVariables [
	^ #(#_size)
]
