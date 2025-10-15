Class {
	#name : 'CobolReceiveIntoStatementNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'name',
		'keywords',
		'into',
		'receiveWithData',
		'receiveNoData'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReceiveIntoStatement: self
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReceiveIntoStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> into [
	^ into
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> into: aCobolExpressionNode [
	self into notNil ifTrue: [ self into parent: nil ].
	into := aCobolExpressionNode.
	self into notNil ifTrue: [ self into parent: self ]
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> name [
	^ name
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> nodeVariables [
	^ #(#name #into #receiveWithData #receiveNoData)
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> receiveNoData [
	^ receiveNoData
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> receiveNoData: aCobolHandlerNode [
	self receiveNoData notNil ifTrue: [ self receiveNoData parent: nil ].
	receiveNoData := aCobolHandlerNode.
	self receiveNoData notNil ifTrue: [ self receiveNoData parent: self ]
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> receiveWithData [
	^ receiveWithData
]

{ #category : 'generated' }
CobolReceiveIntoStatementNode >> receiveWithData: aCobolHandlerNode [
	self receiveWithData notNil ifTrue: [ self receiveWithData parent: nil ].
	receiveWithData := aCobolHandlerNode.
	self receiveWithData notNil ifTrue: [ self receiveWithData parent: self ]
]
