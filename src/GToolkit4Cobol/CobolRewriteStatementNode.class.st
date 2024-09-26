Class {
	#name : #CobolRewriteStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'recordName',
		'notInvalidKeyPhrase',
		'invalidKeyPhrase',
		'rewriteFrom'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolRewriteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRewriteStatement: self
]

{ #category : #generated }
CobolRewriteStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolRewriteStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolRewriteStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : #generated }
CobolRewriteStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : #generated }
CobolRewriteStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolRewriteStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolRewriteStatementNode >> nodeVariables [
	^ #(#recordName #notInvalidKeyPhrase #invalidKeyPhrase #rewriteFrom)
]

{ #category : #generated }
CobolRewriteStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : #generated }
CobolRewriteStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]

{ #category : #generated }
CobolRewriteStatementNode >> recordName [
	^ recordName
]

{ #category : #generated }
CobolRewriteStatementNode >> recordName: aCobolExpressionNode [
	self recordName notNil ifTrue: [ self recordName parent: nil ].
	recordName := aCobolExpressionNode.
	self recordName notNil ifTrue: [ self recordName parent: self ]
]

{ #category : #generated }
CobolRewriteStatementNode >> rewriteFrom [
	^ rewriteFrom
]

{ #category : #generated }
CobolRewriteStatementNode >> rewriteFrom: aCobolExpressionNode [
	self rewriteFrom notNil ifTrue: [ self rewriteFrom parent: nil ].
	rewriteFrom := aCobolExpressionNode.
	self rewriteFrom notNil ifTrue: [ self rewriteFrom parent: self ]
]
