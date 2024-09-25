Class {
	#name : #CobolScreenDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'level',
		'clauses',
		'period',
		'keyword',
		'name'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionEntry: self
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> level [
	^ level
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> level: aSmaCCToken [
	level := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> name [
	^ name
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> period [
	^ period
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionEntryNode >> tokenVariables [
	^ #(#level #period #keyword)
]
