Class {
	#name : 'CobolStopStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'value'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolStopStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStopStatement: self
]

{ #category : 'generated' }
CobolStopStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolStopStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolStopStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolStopStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolStopStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
CobolStopStatementNode >> value [
	^ value
]

{ #category : 'generated' }
CobolStopStatementNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
