Class {
	#name : 'CobolDataValueClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'values',
		'keywords',
		'commas'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataValueClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataValueClause: self
]

{ #category : 'generated' }
CobolDataValueClauseNode >> commas [
	^ commas
]

{ #category : 'generated' }
CobolDataValueClauseNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
CobolDataValueClauseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
CobolDataValueClauseNode >> compositeTokenVariables [
	^ #(#keywords #commas)
]

{ #category : 'generated-initialize-release' }
CobolDataValueClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataValueClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataValueClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolDataValueClauseNode >> values [
	^ values
]

{ #category : 'generated' }
CobolDataValueClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
