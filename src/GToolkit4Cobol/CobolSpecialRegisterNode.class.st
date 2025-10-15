Class {
	#name : 'CobolSpecialRegisterNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'keywords',
		'identifier'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolSpecialRegisterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSpecialRegister: self
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> compositeTokenVariables [
	^ #(#keywords #leftParens #rightParens)
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> identifier [
	^ identifier
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> identifier: aCobolExpressionNode [
	self identifier notNil ifTrue: [ self identifier parent: nil ].
	identifier := aCobolExpressionNode.
	self identifier notNil ifTrue: [ self identifier parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolSpecialRegisterNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolSpecialRegisterNode >> nodeVariables [
	^ #(#identifier)
]
