Class {
	#name : #CobolMessageDateClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'dataName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolMessageDateClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMessageDateClause: self
]

{ #category : #generated }
CobolMessageDateClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolMessageDateClauseNode >> dataName [
	^ dataName
]

{ #category : #generated }
CobolMessageDateClauseNode >> dataName: aCobolIdentifierNode [
	self dataName notNil ifTrue: [ self dataName parent: nil ].
	dataName := aCobolIdentifierNode.
	self dataName notNil ifTrue: [ self dataName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolMessageDateClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolMessageDateClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolMessageDateClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolMessageDateClauseNode >> nodeVariables [
	^ #(#dataName)
]
