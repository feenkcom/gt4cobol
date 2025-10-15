Class {
	#name : 'CobolSignConditionExpressionNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'value',
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSignConditionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSignConditionExpression: self
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> compositeTokenVariables [
	^ #(#keywords #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
CobolSignConditionExpressionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
CobolSignConditionExpressionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
