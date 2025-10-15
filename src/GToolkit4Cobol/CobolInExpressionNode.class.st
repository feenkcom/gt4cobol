Class {
	#name : 'CobolInExpressionNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'name',
		'keywords',
		'inValues'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolInExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInExpression: self
]

{ #category : 'generated' }
CobolInExpressionNode >> compositeNodeVariables [
	^ #(#inValues)
]

{ #category : 'generated' }
CobolInExpressionNode >> compositeTokenVariables [
	^ #(#keywords #leftParens #rightParens)
]

{ #category : 'generated' }
CobolInExpressionNode >> inValues [
	^ inValues
]

{ #category : 'generated' }
CobolInExpressionNode >> inValues: anOrderedCollection [
	self setParents: self inValues to: nil.
	inValues := anOrderedCollection.
	self setParents: self inValues to: self
]

{ #category : 'generated-initialize-release' }
CobolInExpressionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	inValues := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolInExpressionNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolInExpressionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolInExpressionNode >> name [
	^ name
]

{ #category : 'generated' }
CobolInExpressionNode >> name: aCobolExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
CobolInExpressionNode >> nodeVariables [
	^ #(#name)
]
