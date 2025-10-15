Class {
	#name : 'CobolAlternateRecordKeyClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'keyName',
		'passwordClause'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlternateRecordKeyClause: self
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolAlternateRecordKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> keyName [
	^ keyName
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> keyName: aCobolExpressionNode [
	self keyName notNil ifTrue: [ self keyName parent: nil ].
	keyName := aCobolExpressionNode.
	self keyName notNil ifTrue: [ self keyName parent: self ]
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> nodeVariables [
	^ #(#keyName #passwordClause)
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> passwordClause [
	^ passwordClause
]

{ #category : 'generated' }
CobolAlternateRecordKeyClauseNode >> passwordClause: aCobolPasswordClauseNode [
	self passwordClause notNil ifTrue: [ self passwordClause parent: nil ].
	passwordClause := aCobolPasswordClauseNode.
	self passwordClause notNil ifTrue: [ self passwordClause parent: self ]
]
