Class {
	#name : #CobolOpenStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'fileNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolOpenStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOpenStatement: self
]

{ #category : #generated }
CobolOpenStatementNode >> compositeNodeVariables [
	^ #(#fileNames)
]

{ #category : #generated }
CobolOpenStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolOpenStatementNode >> fileNames [
	^ fileNames
]

{ #category : #generated }
CobolOpenStatementNode >> fileNames: anOrderedCollection [
	self setParents: self fileNames to: nil.
	fileNames := anOrderedCollection.
	self setParents: self fileNames to: self
]

{ #category : #'generated-initialize-release' }
CobolOpenStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolOpenStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolOpenStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
