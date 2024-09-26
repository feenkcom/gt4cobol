Class {
	#name : #CobolIfThenNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'statements'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolIfThenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIfThen: self
]

{ #category : #generated }
CobolIfThenNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
CobolIfThenNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolIfThenNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
CobolIfThenNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolIfThenNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolIfThenNode >> statements [
	^ statements
]

{ #category : #generated }
CobolIfThenNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
