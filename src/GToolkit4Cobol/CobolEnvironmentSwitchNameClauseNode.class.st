Class {
	#name : #CobolEnvironmentSwitchNameClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'environmentName',
		'mnemonicName',
		'keywords',
		'onCondition',
		'offCondition'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnvironmentSwitchNameClause: self
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> environmentName [
	^ environmentName
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> environmentName: aCobolIdentifierNode [
	self environmentName notNil ifTrue: [ self environmentName parent: nil ].
	environmentName := aCobolIdentifierNode.
	self environmentName notNil ifTrue: [ self environmentName parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolEnvironmentSwitchNameClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> mnemonicName [
	^ mnemonicName
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> mnemonicName: aCobolIdentifierNode [
	self mnemonicName notNil ifTrue: [ self mnemonicName parent: nil ].
	mnemonicName := aCobolIdentifierNode.
	self mnemonicName notNil ifTrue: [ self mnemonicName parent: self ]
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> nodeVariables [
	^ #(#environmentName #mnemonicName #onCondition #offCondition)
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> offCondition [
	^ offCondition
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> offCondition: aCobolExpressionNode [
	self offCondition notNil ifTrue: [ self offCondition parent: nil ].
	offCondition := aCobolExpressionNode.
	self offCondition notNil ifTrue: [ self offCondition parent: self ]
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> onCondition [
	^ onCondition
]

{ #category : #generated }
CobolEnvironmentSwitchNameClauseNode >> onCondition: aCobolExpressionNode [
	self onCondition notNil ifTrue: [ self onCondition parent: nil ].
	onCondition := aCobolExpressionNode.
	self onCondition notNil ifTrue: [ self onCondition parent: self ]
]
