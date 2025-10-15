Class {
	#name : 'CobolClassConditionExpressionNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'value',
		'keywords',
		'_className'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolClassConditionExpressionNode >> _className [
	^ _className
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> _className: aCobolIdentifierNode [
	self _className notNil ifTrue: [ self _className parent: nil ].
	_className := aCobolIdentifierNode.
	self _className notNil ifTrue: [ self _className parent: self ]
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassConditionExpression: self
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> compositeTokenVariables [
	^ #(#keywords #leftParens #rightParens)
]

{ #category : 'generated-initialize-release' }
CobolClassConditionExpressionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> nodeVariables [
	^ #(#value #_className)
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
CobolClassConditionExpressionNode >> value: aCobolExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
