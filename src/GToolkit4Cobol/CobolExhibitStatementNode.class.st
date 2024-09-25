Class {
	#name : #CobolExhibitStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'exhibits'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolExhibitStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExhibitStatement: self
]

{ #category : #generated }
CobolExhibitStatementNode >> compositeNodeVariables [
	^ #(#exhibits)
]

{ #category : #generated }
CobolExhibitStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolExhibitStatementNode >> exhibits [
	^ exhibits
]

{ #category : #generated }
CobolExhibitStatementNode >> exhibits: anOrderedCollection [
	self setParents: self exhibits to: nil.
	exhibits := anOrderedCollection.
	self setParents: self exhibits to: self
]

{ #category : #'generated-initialize-release' }
CobolExhibitStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	exhibits := OrderedCollection new: 2.
]

{ #category : #generated }
CobolExhibitStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExhibitStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
