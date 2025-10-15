Class {
	#name : 'CobolMessageTimeClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolMessageTimeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMessageTimeClause: self
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> dataName [
	^ dataName
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolMessageTimeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolMessageTimeClauseNode >> nodeVariables [
	^ #(#dataName)
]
