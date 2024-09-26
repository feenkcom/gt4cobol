Class {
	#name : #CobolRecordContainsClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'count',
		'dependingOnName',
		'toCount'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolRecordContainsClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRecordContainsClause: self
]

{ #category : #generated }
CobolRecordContainsClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolRecordContainsClauseNode >> count [
	^ count
]

{ #category : #generated }
CobolRecordContainsClauseNode >> count: aCobolLiteralNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolLiteralNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : #generated }
CobolRecordContainsClauseNode >> dependingOnName [
	^ dependingOnName
]

{ #category : #generated }
CobolRecordContainsClauseNode >> dependingOnName: aCobolExpressionNode [
	self dependingOnName notNil ifTrue: [ self dependingOnName parent: nil ].
	dependingOnName := aCobolExpressionNode.
	self dependingOnName notNil ifTrue: [ self dependingOnName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolRecordContainsClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolRecordContainsClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolRecordContainsClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolRecordContainsClauseNode >> nodeVariables [
	^ #(#count #dependingOnName #toCount)
]

{ #category : #generated }
CobolRecordContainsClauseNode >> toCount [
	^ toCount
]

{ #category : #generated }
CobolRecordContainsClauseNode >> toCount: aCobolLiteralNode [
	self toCount notNil ifTrue: [ self toCount parent: nil ].
	toCount := aCobolLiteralNode.
	self toCount notNil ifTrue: [ self toCount parent: self ]
]
