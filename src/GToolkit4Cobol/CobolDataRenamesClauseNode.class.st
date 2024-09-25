Class {
	#name : #CobolDataRenamesClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'renameName',
		'toName'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolDataRenamesClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataRenamesClause: self
]

{ #category : #generated }
CobolDataRenamesClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataRenamesClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataRenamesClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataRenamesClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataRenamesClauseNode >> nodeVariables [
	^ #(#renameName #toName)
]

{ #category : #generated }
CobolDataRenamesClauseNode >> renameName [
	^ renameName
]

{ #category : #generated }
CobolDataRenamesClauseNode >> renameName: aCobolExpressionNode [
	self renameName notNil ifTrue: [ self renameName parent: nil ].
	renameName := aCobolExpressionNode.
	self renameName notNil ifTrue: [ self renameName parent: self ]
]

{ #category : #generated }
CobolDataRenamesClauseNode >> toName [
	^ toName
]

{ #category : #generated }
CobolDataRenamesClauseNode >> toName: aCobolExpressionNode [
	self toName notNil ifTrue: [ self toName parent: nil ].
	toName := aCobolExpressionNode.
	self toName notNil ifTrue: [ self toName parent: self ]
]
