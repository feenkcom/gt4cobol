Class {
	#name : 'CobolCancelStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'cancels'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCancelStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCancelStatement: self
]

{ #category : 'generated' }
CobolCancelStatementNode >> cancels [
	^ cancels
]

{ #category : 'generated' }
CobolCancelStatementNode >> cancels: anOrderedCollection [
	self setParents: self cancels to: nil.
	cancels := anOrderedCollection.
	self setParents: self cancels to: self
]

{ #category : 'generated' }
CobolCancelStatementNode >> compositeNodeVariables [
	^ #(#cancels)
]

{ #category : 'generated' }
CobolCancelStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolCancelStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	cancels := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCancelStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolCancelStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
