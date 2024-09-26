Class {
	#name : #CobolDataDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'level',
		'clauses',
		'period',
		'keyword',
		'name'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataDescriptionEntry: self
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #'generated-initialize-release' }
CobolDataDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> level [
	^ level
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> level: aSmaCCToken [
	level := aSmaCCToken
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> name [
	^ name
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> period [
	^ period
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> tokenVariables [
	^ #(#level #period #keyword)
]
