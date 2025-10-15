Class {
	#name : 'CobolRecordKeyClauseNode',
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
CobolRecordKeyClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordKeyClause: self
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolRecordKeyClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> keyName [
	^ keyName
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> keyName: aCobolExpressionNode [
	self keyName notNil ifTrue: [ self keyName parent: nil ].
	keyName := aCobolExpressionNode.
	self keyName notNil ifTrue: [ self keyName parent: self ]
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> nodeVariables [
	^ #(#keyName #passwordClause)
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> passwordClause [
	^ passwordClause
]

{ #category : 'generated' }
CobolRecordKeyClauseNode >> passwordClause: aCobolPasswordClauseNode [
	self passwordClause notNil ifTrue: [ self passwordClause parent: nil ].
	passwordClause := aCobolPasswordClauseNode.
	self passwordClause notNil ifTrue: [ self passwordClause parent: self ]
]
