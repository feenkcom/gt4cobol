Class {
	#name : #CobolRangeConditionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'value',
		'keywords',
		'through'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolRangeConditionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRangeCondition: self
]

{ #category : #generated }
CobolRangeConditionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolRangeConditionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolRangeConditionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolRangeConditionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolRangeConditionNode >> nodeVariables [
	^ #(#value #through)
]

{ #category : #generated }
CobolRangeConditionNode >> through [
	^ through
]

{ #category : #generated }
CobolRangeConditionNode >> through: aCobolExpressionNode [
	self through notNil ifTrue: [ self through parent: nil ].
	through := aCobolExpressionNode.
	self through notNil ifTrue: [ self through parent: self ]
]

{ #category : #generated }
CobolRangeConditionNode >> value [
	^ value
]

{ #category : #generated }
CobolRangeConditionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
