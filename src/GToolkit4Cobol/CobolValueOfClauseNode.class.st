Class {
	#name : 'CobolValueOfClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'systemNames',
		'values'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolValueOfClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValueOfClause: self
]

{ #category : 'generated' }
CobolValueOfClauseNode >> compositeNodeVariables [
	^ #(#systemNames #values)
]

{ #category : 'generated' }
CobolValueOfClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolValueOfClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	systemNames := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolValueOfClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolValueOfClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolValueOfClauseNode >> systemNames [
	^ systemNames
]

{ #category : 'generated' }
CobolValueOfClauseNode >> systemNames: anOrderedCollection [
	self setParents: self systemNames to: nil.
	systemNames := anOrderedCollection.
	self setParents: self systemNames to: self
]

{ #category : 'generated' }
CobolValueOfClauseNode >> values [
	^ values
]

{ #category : 'generated' }
CobolValueOfClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
