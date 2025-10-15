Class {
	#name : 'CobolSelectClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'fileName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSelectClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSelectClause: self
]

{ #category : 'generated' }
CobolSelectClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolSelectClauseNode >> fileName [
	^ fileName
]

{ #category : 'generated' }
CobolSelectClauseNode >> fileName: aCobolIdentifierNode [
	self fileName notNil ifTrue: [ self fileName parent: nil ].
	fileName := aCobolIdentifierNode.
	self fileName notNil ifTrue: [ self fileName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolSelectClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSelectClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSelectClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSelectClauseNode >> nodeVariables [
	^ #(#fileName)
]
