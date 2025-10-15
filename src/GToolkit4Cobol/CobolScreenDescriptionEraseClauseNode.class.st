Class {
	#name : 'CobolScreenDescriptionEraseClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolScreenDescriptionEraseClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionEraseClause: self
]

{ #category : 'generated' }
CobolScreenDescriptionEraseClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolScreenDescriptionEraseClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolScreenDescriptionEraseClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolScreenDescriptionEraseClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
