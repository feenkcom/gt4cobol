Class {
	#name : #CobolRecordingModeClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'mode'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolRecordingModeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordingModeClause: self
]

{ #category : #generated }
CobolRecordingModeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolRecordingModeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolRecordingModeClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolRecordingModeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolRecordingModeClauseNode >> mode [
	^ mode
]

{ #category : #generated }
CobolRecordingModeClauseNode >> mode: aCobolIdentifierNode [
	self mode notNil ifTrue: [ self mode parent: nil ].
	mode := aCobolIdentifierNode.
	self mode notNil ifTrue: [ self mode parent: self ]
]

{ #category : #generated }
CobolRecordingModeClauseNode >> nodeVariables [
	^ #(#mode)
]
