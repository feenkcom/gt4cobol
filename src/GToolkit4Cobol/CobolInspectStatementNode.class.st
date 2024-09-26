Class {
	#name : #CobolInspectStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_inspect',
		'tallyings',
		'beforeAfters',
		'inspectAllLeadings',
		'inspectBies',
		'inspectReplacingAllLeadings',
		'converting',
		'inspectTo'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolInspectStatementNode >> _inspect [
	^ _inspect
]

{ #category : #generated }
CobolInspectStatementNode >> _inspect: aCobolExpressionNode [
	self _inspect notNil ifTrue: [ self _inspect parent: nil ].
	_inspect := aCobolExpressionNode.
	self _inspect notNil ifTrue: [ self _inspect parent: self ]
]

{ #category : #generated }
CobolInspectStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInspectStatement: self
]

{ #category : #generated }
CobolInspectStatementNode >> beforeAfters [
	^ beforeAfters
]

{ #category : #generated }
CobolInspectStatementNode >> beforeAfters: anOrderedCollection [
	self setParents: self beforeAfters to: nil.
	beforeAfters := anOrderedCollection.
	self setParents: self beforeAfters to: self
]

{ #category : #generated }
CobolInspectStatementNode >> compositeNodeVariables [
	^ #(#tallyings #beforeAfters #inspectAllLeadings #inspectBies #inspectReplacingAllLeadings)
]

{ #category : #generated }
CobolInspectStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolInspectStatementNode >> converting [
	^ converting
]

{ #category : #generated }
CobolInspectStatementNode >> converting: aCobolExpressionNode [
	self converting notNil ifTrue: [ self converting parent: nil ].
	converting := aCobolExpressionNode.
	self converting notNil ifTrue: [ self converting parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolInspectStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	tallyings := OrderedCollection new: 2.
	beforeAfters := OrderedCollection new: 2.
	inspectAllLeadings := OrderedCollection new: 2.
	inspectBies := OrderedCollection new: 2.
	inspectReplacingAllLeadings := OrderedCollection new: 2.
]

{ #category : #generated }
CobolInspectStatementNode >> inspectAllLeadings [
	^ inspectAllLeadings
]

{ #category : #generated }
CobolInspectStatementNode >> inspectAllLeadings: anOrderedCollection [
	self setParents: self inspectAllLeadings to: nil.
	inspectAllLeadings := anOrderedCollection.
	self setParents: self inspectAllLeadings to: self
]

{ #category : #generated }
CobolInspectStatementNode >> inspectBies [
	^ inspectBies
]

{ #category : #generated }
CobolInspectStatementNode >> inspectBies: anOrderedCollection [
	self setParents: self inspectBies to: nil.
	inspectBies := anOrderedCollection.
	self setParents: self inspectBies to: self
]

{ #category : #generated }
CobolInspectStatementNode >> inspectReplacingAllLeadings [
	^ inspectReplacingAllLeadings
]

{ #category : #generated }
CobolInspectStatementNode >> inspectReplacingAllLeadings: anOrderedCollection [
	self setParents: self inspectReplacingAllLeadings to: nil.
	inspectReplacingAllLeadings := anOrderedCollection.
	self setParents: self inspectReplacingAllLeadings to: self
]

{ #category : #generated }
CobolInspectStatementNode >> inspectTo [
	^ inspectTo
]

{ #category : #generated }
CobolInspectStatementNode >> inspectTo: aCobolExpressionNode [
	self inspectTo notNil ifTrue: [ self inspectTo parent: nil ].
	inspectTo := aCobolExpressionNode.
	self inspectTo notNil ifTrue: [ self inspectTo parent: self ]
]

{ #category : #generated }
CobolInspectStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolInspectStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolInspectStatementNode >> nodeVariables [
	^ #(#_inspect #converting #inspectTo)
]

{ #category : #generated }
CobolInspectStatementNode >> tallyings [
	^ tallyings
]

{ #category : #generated }
CobolInspectStatementNode >> tallyings: anOrderedCollection [
	self setParents: self tallyings to: nil.
	tallyings := anOrderedCollection.
	self setParents: self tallyings to: self
]
