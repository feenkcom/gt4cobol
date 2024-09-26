Class {
	#name : #CobolSourceComputerParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'periods',
		'computerName'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSourceComputerParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSourceComputerParagraph: self
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> compositeTokenVariables [
	^ #(#keywords #periods)
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> computerName [
	^ computerName
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> computerName: aCobolIdentifierNode [
	self computerName notNil ifTrue: [ self computerName parent: nil ].
	computerName := aCobolIdentifierNode.
	self computerName notNil ifTrue: [ self computerName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolSourceComputerParagraphNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	periods := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> nodeVariables [
	^ #(#computerName)
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolSourceComputerParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]
