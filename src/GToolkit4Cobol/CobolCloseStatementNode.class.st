Class {
	#name : 'CobolCloseStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keyword',
		'files'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolCloseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCloseStatement: self
]

{ #category : 'generated' }
CobolCloseStatementNode >> compositeNodeVariables [
	^ #(#files)
]

{ #category : 'generated' }
CobolCloseStatementNode >> files [
	^ files
]

{ #category : 'generated' }
CobolCloseStatementNode >> files: anOrderedCollection [
	self setParents: self files to: nil.
	files := anOrderedCollection.
	self setParents: self files to: self
]

{ #category : 'generated-initialize-release' }
CobolCloseStatementNode >> initialize [
	super initialize.
	files := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolCloseStatementNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolCloseStatementNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolCloseStatementNode >> tokenVariables [
	^ #(#keyword)
]
