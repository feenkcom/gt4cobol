Class {
	#name : #CobolUseAfterClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'filenames'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolUseAfterClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseAfterClause: self
]

{ #category : #generated }
CobolUseAfterClauseNode >> compositeNodeVariables [
	^ #(#filenames)
]

{ #category : #generated }
CobolUseAfterClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolUseAfterClauseNode >> filenames [
	^ filenames
]

{ #category : #generated }
CobolUseAfterClauseNode >> filenames: anOrderedCollection [
	self setParents: self filenames to: nil.
	filenames := anOrderedCollection.
	self setParents: self filenames to: self
]

{ #category : #'generated-initialize-release' }
CobolUseAfterClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	filenames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolUseAfterClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolUseAfterClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
