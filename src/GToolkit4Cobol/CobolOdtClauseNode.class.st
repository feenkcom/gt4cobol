Class {
	#name : #CobolOdtClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'mnemonicName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolOdtClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOdtClause: self
]

{ #category : #generated }
CobolOdtClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolOdtClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolOdtClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolOdtClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolOdtClauseNode >> mnemonicName [
	^ mnemonicName
]

{ #category : #generated }
CobolOdtClauseNode >> mnemonicName: aCobolIdentifierNode [
	self mnemonicName notNil ifTrue: [ self mnemonicName parent: nil ].
	mnemonicName := aCobolIdentifierNode.
	self mnemonicName notNil ifTrue: [ self mnemonicName parent: self ]
]

{ #category : #generated }
CobolOdtClauseNode >> nodeVariables [
	^ #(#mnemonicName)
]
