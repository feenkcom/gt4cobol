Class {
	#name : 'CobolAlterProceedToNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'fromSection',
		'keywords',
		'toSection'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolAlterProceedToNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAlterProceedTo: self
]

{ #category : 'generated' }
CobolAlterProceedToNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated' }
CobolAlterProceedToNode >> fromSection [
	^ fromSection
]

{ #category : 'generated' }
CobolAlterProceedToNode >> fromSection: aCobolProgramNode [
	self fromSection notNil ifTrue: [ self fromSection parent: nil ].
	fromSection := aCobolProgramNode.
	self fromSection notNil ifTrue: [ self fromSection parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolAlterProceedToNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolAlterProceedToNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolAlterProceedToNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolAlterProceedToNode >> nodeVariables [
	^ #(#fromSection #toSection)
]

{ #category : 'generated' }
CobolAlterProceedToNode >> toSection [
	^ toSection
]

{ #category : 'generated' }
CobolAlterProceedToNode >> toSection: aCobolProgramNode [
	self toSection notNil ifTrue: [ self toSection parent: nil ].
	toSection := aCobolProgramNode.
	self toSection notNil ifTrue: [ self toSection parent: self ]
]
