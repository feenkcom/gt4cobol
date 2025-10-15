Class {
	#name : 'CobolSendStatementSyncNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'send',
		'keywords',
		'count',
		'sendWith',
		'sendFrom'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSendStatementSyncNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSendStatementSync: self
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> count [
	^ count
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> count: aCobolExpressionNode [
	self count notNil ifTrue: [ self count parent: nil ].
	count := aCobolExpressionNode.
	self count notNil ifTrue: [ self count parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolSendStatementSyncNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> nodeVariables [
	^ #(#send #count #sendWith #sendFrom)
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> send [
	^ send
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> send: aCobolExpressionNode [
	self send notNil ifTrue: [ self send parent: nil ].
	send := aCobolExpressionNode.
	self send notNil ifTrue: [ self send parent: self ]
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> sendFrom [
	^ sendFrom
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> sendFrom: aCobolExpressionNode [
	self sendFrom notNil ifTrue: [ self sendFrom parent: nil ].
	sendFrom := aCobolExpressionNode.
	self sendFrom notNil ifTrue: [ self sendFrom parent: self ]
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> sendWith [
	^ sendWith
]

{ #category : 'generated' }
CobolSendStatementSyncNode >> sendWith: aCobolExpressionNode [
	self sendWith notNil ifTrue: [ self sendWith parent: nil ].
	sendWith := aCobolExpressionNode.
	self sendWith notNil ifTrue: [ self sendWith parent: self ]
]
