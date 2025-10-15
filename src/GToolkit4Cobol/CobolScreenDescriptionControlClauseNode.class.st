Class {
	#name : 'CobolScreenDescriptionControlClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'control'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionControlClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> control [
	^ control
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> control: aCobolExpressionNode [
	self control notNil ifTrue: [ self control parent: nil ].
	control := aCobolExpressionNode.
	self control notNil ifTrue: [ self control parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolScreenDescriptionControlClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolScreenDescriptionControlClauseNode >> nodeVariables [
	^ #(#control)
]
