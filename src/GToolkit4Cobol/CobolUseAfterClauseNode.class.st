Class {
	#name : #CobolUseAfterClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'fileNames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolUseAfterClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseAfterClause: self
]

{ #category : #generated }
CobolUseAfterClauseNode >> compositeNodeVariables [
	^ #(#fileNames)
]

{ #category : #generated }
CobolUseAfterClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolUseAfterClauseNode >> fileNames [
	^ fileNames
]

{ #category : #generated }
CobolUseAfterClauseNode >> fileNames: anOrderedCollection [
	self setParents: self fileNames to: nil.
	fileNames := anOrderedCollection.
	self setParents: self fileNames to: self
]

{ #category : #'generated-initialize-release' }
CobolUseAfterClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolUseAfterClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolUseAfterClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
