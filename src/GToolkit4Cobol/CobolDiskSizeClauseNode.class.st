Class {
	#name : #CobolDiskSizeClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'diskSize'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDiskSizeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDiskSizeClause: self
]

{ #category : #generated }
CobolDiskSizeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolDiskSizeClauseNode >> diskSize [
	^ diskSize
]

{ #category : #generated }
CobolDiskSizeClauseNode >> diskSize: aCobolExpressionNode [
	self diskSize notNil ifTrue: [ self diskSize parent: nil ].
	diskSize := aCobolExpressionNode.
	self diskSize notNil ifTrue: [ self diskSize parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolDiskSizeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDiskSizeClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDiskSizeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDiskSizeClauseNode >> nodeVariables [
	^ #(#diskSize)
]
