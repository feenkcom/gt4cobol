Class {
	#name : #CobolEvaluateWhenNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'conditions'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolEvaluateWhenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEvaluateWhen: self
]

{ #category : #generated }
CobolEvaluateWhenNode >> compositeNodeVariables [
	^ #(#conditions)
]

{ #category : #generated }
CobolEvaluateWhenNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolEvaluateWhenNode >> conditions [
	^ conditions
]

{ #category : #generated }
CobolEvaluateWhenNode >> conditions: anOrderedCollection [
	self setParents: self conditions to: nil.
	conditions := anOrderedCollection.
	self setParents: self conditions to: self
]

{ #category : #'generated-initialize-release' }
CobolEvaluateWhenNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	conditions := OrderedCollection new: 2.
]

{ #category : #generated }
CobolEvaluateWhenNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolEvaluateWhenNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
