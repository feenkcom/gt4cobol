Class {
	#name : #CobolDataBaseSectionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'level',
		'values',
		'keyword'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataBaseSectionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataBaseSectionEntry: self
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #'generated-initialize-release' }
CobolDataBaseSectionEntryNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> level [
	^ level
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> level: aCobolLiteralNode [
	self level notNil ifTrue: [ self level parent: nil ].
	level := aCobolLiteralNode.
	self level notNil ifTrue: [ self level parent: self ]
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> nodeVariables [
	^ #(#level)
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> tokenVariables [
	^ #(#keyword)
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> values [
	^ values
]

{ #category : #generated }
CobolDataBaseSectionEntryNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
