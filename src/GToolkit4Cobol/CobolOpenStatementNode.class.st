Class {
	#name : #CobolOpenStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'filenames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolOpenStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOpenStatement: self
]

{ #category : #generated }
CobolOpenStatementNode >> compositeNodeVariables [
	^ #(#filenames)
]

{ #category : #generated }
CobolOpenStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolOpenStatementNode >> filenames [
	^ filenames
]

{ #category : #generated }
CobolOpenStatementNode >> filenames: anOrderedCollection [
	self setParents: self filenames to: nil.
	filenames := anOrderedCollection.
	self setParents: self filenames to: self
]

{ #category : #'generated-initialize-release' }
CobolOpenStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolOpenStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolOpenStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
