Class {
	#name : #CobolUseDebugClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'allReferencesOfs',
		'names'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolUseDebugClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseDebugClause: self
]

{ #category : #generated }
CobolUseDebugClauseNode >> allReferencesOfs [
	^ allReferencesOfs
]

{ #category : #generated }
CobolUseDebugClauseNode >> allReferencesOfs: anOrderedCollection [
	self setParents: self allReferencesOfs to: nil.
	allReferencesOfs := anOrderedCollection.
	self setParents: self allReferencesOfs to: self
]

{ #category : #generated }
CobolUseDebugClauseNode >> compositeNodeVariables [
	^ #(#allReferencesOfs #names)
]

{ #category : #generated }
CobolUseDebugClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolUseDebugClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	allReferencesOfs := OrderedCollection new: 2.
	names := OrderedCollection new: 2.
]

{ #category : #generated }
CobolUseDebugClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolUseDebugClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolUseDebugClauseNode >> names [
	^ names
]

{ #category : #generated }
CobolUseDebugClauseNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]
