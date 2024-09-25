Class {
	#name : #CobolInitializeStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'initializes',
		'replacings'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolInitializeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInitializeStatement: self
]

{ #category : #generated }
CobolInitializeStatementNode >> compositeNodeVariables [
	^ #(#initializes #replacings)
]

{ #category : #generated }
CobolInitializeStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolInitializeStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	initializes := OrderedCollection new: 2.
	replacings := OrderedCollection new: 2.
]

{ #category : #generated }
CobolInitializeStatementNode >> initializes [
	^ initializes
]

{ #category : #generated }
CobolInitializeStatementNode >> initializes: anOrderedCollection [
	self setParents: self initializes to: nil.
	initializes := anOrderedCollection.
	self setParents: self initializes to: self
]

{ #category : #generated }
CobolInitializeStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolInitializeStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolInitializeStatementNode >> replacings [
	^ replacings
]

{ #category : #generated }
CobolInitializeStatementNode >> replacings: anOrderedCollection [
	self setParents: self replacings to: nil.
	replacings := anOrderedCollection.
	self setParents: self replacings to: self
]
