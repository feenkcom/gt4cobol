Class {
	#name : #CobolClassClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'_className',
		'classFroms',
		'classTos'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolClassClauseNode >> _className [
	^ _className
]

{ #category : #generated }
CobolClassClauseNode >> _className: aCobolIdentifierNode [
	self _className notNil ifTrue: [ self _className parent: nil ].
	_className := aCobolIdentifierNode.
	self _className notNil ifTrue: [ self _className parent: self ]
]

{ #category : #generated }
CobolClassClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassClause: self
]

{ #category : #generated }
CobolClassClauseNode >> classFroms [
	^ classFroms
]

{ #category : #generated }
CobolClassClauseNode >> classFroms: anOrderedCollection [
	self setParents: self classFroms to: nil.
	classFroms := anOrderedCollection.
	self setParents: self classFroms to: self
]

{ #category : #generated }
CobolClassClauseNode >> classTos [
	^ classTos
]

{ #category : #generated }
CobolClassClauseNode >> classTos: anOrderedCollection [
	self setParents: self classTos to: nil.
	classTos := anOrderedCollection.
	self setParents: self classTos to: self
]

{ #category : #generated }
CobolClassClauseNode >> compositeNodeVariables [
	^ #(#classFroms #classTos)
]

{ #category : #generated }
CobolClassClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolClassClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	classFroms := OrderedCollection new: 2.
	classTos := OrderedCollection new: 2.
]

{ #category : #generated }
CobolClassClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolClassClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolClassClauseNode >> nodeVariables [
	^ #(#_className)
]
