Class {
	#name : #CobolChannelClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'channels'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolChannelClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitChannelClause: self
]

{ #category : #generated }
CobolChannelClauseNode >> channels [
	^ channels
]

{ #category : #generated }
CobolChannelClauseNode >> channels: anOrderedCollection [
	self setParents: self channels to: nil.
	channels := anOrderedCollection.
	self setParents: self channels to: self
]

{ #category : #generated }
CobolChannelClauseNode >> compositeNodeVariables [
	^ #(#channels)
]

{ #category : #generated }
CobolChannelClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolChannelClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	channels := OrderedCollection new: 2.
]

{ #category : #generated }
CobolChannelClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolChannelClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
