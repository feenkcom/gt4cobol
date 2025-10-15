Class {
	#name : 'CobolEvaluateWhenOtherNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'statements'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEvaluateWhenOther: self
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolEvaluateWhenOtherNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> statements [
	^ statements
]

{ #category : 'generated' }
CobolEvaluateWhenOtherNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
