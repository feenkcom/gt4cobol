Class {
	#name : 'CobolScreenDescriptionValueClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'value'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionValueClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolScreenDescriptionValueClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> value [
	^ value
]

{ #category : 'generated' }
CobolScreenDescriptionValueClauseNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
