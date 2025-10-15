Class {
	#name : 'CobolWriteStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'recordName',
		'invalidKeyPhrase',
		'notInvalidKeyPhrase',
		'writeNotAtEndOfPagePhrase',
		'writeAtEndOfPagePhrase',
		'lines',
		'from'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolWriteStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitWriteStatement: self
]

{ #category : 'generated' }
CobolWriteStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolWriteStatementNode >> from [
	^ from
]

{ #category : 'generated' }
CobolWriteStatementNode >> from: aCobolExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aCobolExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolWriteStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolWriteStatementNode >> invalidKeyPhrase [
	^ invalidKeyPhrase
]

{ #category : 'generated' }
CobolWriteStatementNode >> invalidKeyPhrase: aCobolHandlerNode [
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: nil ].
	invalidKeyPhrase := aCobolHandlerNode.
	self invalidKeyPhrase notNil ifTrue: [ self invalidKeyPhrase parent: self ]
]

{ #category : 'generated' }
CobolWriteStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolWriteStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolWriteStatementNode >> lines [
	^ lines
]

{ #category : 'generated' }
CobolWriteStatementNode >> lines: aCobolExpressionNode [
	self lines notNil ifTrue: [ self lines parent: nil ].
	lines := aCobolExpressionNode.
	self lines notNil ifTrue: [ self lines parent: self ]
]

{ #category : 'generated' }
CobolWriteStatementNode >> nodeVariables [
	^ #(#recordName #invalidKeyPhrase #notInvalidKeyPhrase #writeNotAtEndOfPagePhrase #writeAtEndOfPagePhrase #lines #from)
]

{ #category : 'generated' }
CobolWriteStatementNode >> notInvalidKeyPhrase [
	^ notInvalidKeyPhrase
]

{ #category : 'generated' }
CobolWriteStatementNode >> notInvalidKeyPhrase: aCobolHandlerNode [
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: nil ].
	notInvalidKeyPhrase := aCobolHandlerNode.
	self notInvalidKeyPhrase notNil
		ifTrue: [ self notInvalidKeyPhrase parent: self ]
]

{ #category : 'generated' }
CobolWriteStatementNode >> recordName [
	^ recordName
]

{ #category : 'generated' }
CobolWriteStatementNode >> recordName: aCobolExpressionNode [
	self recordName notNil ifTrue: [ self recordName parent: nil ].
	recordName := aCobolExpressionNode.
	self recordName notNil ifTrue: [ self recordName parent: self ]
]

{ #category : 'generated' }
CobolWriteStatementNode >> writeAtEndOfPagePhrase [
	^ writeAtEndOfPagePhrase
]

{ #category : 'generated' }
CobolWriteStatementNode >> writeAtEndOfPagePhrase: aCobolHandlerNode [
	self writeAtEndOfPagePhrase notNil
		ifTrue: [ self writeAtEndOfPagePhrase parent: nil ].
	writeAtEndOfPagePhrase := aCobolHandlerNode.
	self writeAtEndOfPagePhrase notNil
		ifTrue: [ self writeAtEndOfPagePhrase parent: self ]
]

{ #category : 'generated' }
CobolWriteStatementNode >> writeNotAtEndOfPagePhrase [
	^ writeNotAtEndOfPagePhrase
]

{ #category : 'generated' }
CobolWriteStatementNode >> writeNotAtEndOfPagePhrase: aCobolHandlerNode [
	self writeNotAtEndOfPagePhrase notNil
		ifTrue: [ self writeNotAtEndOfPagePhrase parent: nil ].
	writeNotAtEndOfPagePhrase := aCobolHandlerNode.
	self writeNotAtEndOfPagePhrase notNil
		ifTrue: [ self writeNotAtEndOfPagePhrase parent: self ]
]
