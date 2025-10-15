Class {
	#name : 'CobolGoToStatementNode',
	#superclass : 'CobolStatementNode',
	#instVars : [
		'keywords',
		'procedureNames',
		'dependingOn'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolGoToStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGoToStatement: self
]

{ #category : 'generated' }
CobolGoToStatementNode >> compositeNodeVariables [
	^ #(#procedureNames)
]

{ #category : 'generated' }
CobolGoToStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolGoToStatementNode >> dependingOn [
	^ dependingOn
]

{ #category : 'generated' }
CobolGoToStatementNode >> dependingOn: aCobolExpressionNode [
	self dependingOn notNil ifTrue: [ self dependingOn parent: nil ].
	dependingOn := aCobolExpressionNode.
	self dependingOn notNil ifTrue: [ self dependingOn parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolGoToStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	procedureNames := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolGoToStatementNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolGoToStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolGoToStatementNode >> nodeVariables [
	^ #(#dependingOn)
]

{ #category : 'generated' }
CobolGoToStatementNode >> procedureNames [
	^ procedureNames
]

{ #category : 'generated' }
CobolGoToStatementNode >> procedureNames: anOrderedCollection [
	self setParents: self procedureNames to: nil.
	procedureNames := anOrderedCollection.
	self setParents: self procedureNames to: self
]
