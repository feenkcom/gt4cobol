Class {
	#name : 'CobolSearchStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'searchName',
		'searchWhens',
		'atEndPhrase',
		'varyingName'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSearchStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSearchStatement: self
]

{ #category : 'generated' }
CobolSearchStatementNode >> atEndPhrase [
	^ atEndPhrase
]

{ #category : 'generated' }
CobolSearchStatementNode >> atEndPhrase: aCobolHandlerNode [
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: nil ].
	atEndPhrase := aCobolHandlerNode.
	self atEndPhrase notNil ifTrue: [ self atEndPhrase parent: self ]
]

{ #category : 'generated' }
CobolSearchStatementNode >> compositeNodeVariables [
	^ #(#searchWhens)
]

{ #category : 'generated' }
CobolSearchStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolSearchStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	searchWhens := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSearchStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSearchStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSearchStatementNode >> nodeVariables [
	^ #(#searchName #atEndPhrase #varyingName)
]

{ #category : 'generated' }
CobolSearchStatementNode >> searchName [
	^ searchName
]

{ #category : 'generated' }
CobolSearchStatementNode >> searchName: aCobolExpressionNode [
	self searchName notNil ifTrue: [ self searchName parent: nil ].
	searchName := aCobolExpressionNode.
	self searchName notNil ifTrue: [ self searchName parent: self ]
]

{ #category : 'generated' }
CobolSearchStatementNode >> searchWhens [
	^ searchWhens
]

{ #category : 'generated' }
CobolSearchStatementNode >> searchWhens: anOrderedCollection [
	self setParents: self searchWhens to: nil.
	searchWhens := anOrderedCollection.
	self setParents: self searchWhens to: self
]

{ #category : 'generated' }
CobolSearchStatementNode >> varyingName [
	^ varyingName
]

{ #category : 'generated' }
CobolSearchStatementNode >> varyingName: aCobolExpressionNode [
	self varyingName notNil ifTrue: [ self varyingName parent: nil ].
	varyingName := aCobolExpressionNode.
	self varyingName notNil ifTrue: [ self varyingName parent: self ]
]
