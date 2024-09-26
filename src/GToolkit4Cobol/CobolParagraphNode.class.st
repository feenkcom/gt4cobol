Class {
	#name : #CobolParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'name',
		'period',
		'sentences'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParagraph: self
]

{ #category : #generated }
CobolParagraphNode >> compositeNodeVariables [
	^ #(#sentences)
]

{ #category : #'generated-initialize-release' }
CobolParagraphNode >> initialize [
	super initialize.
	sentences := OrderedCollection new: 2.
]

{ #category : #generated }
CobolParagraphNode >> name [
	^ name
]

{ #category : #generated }
CobolParagraphNode >> name: aCobolExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolParagraphNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
CobolParagraphNode >> period [
	^ period
]

{ #category : #generated }
CobolParagraphNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolParagraphNode >> sentences [
	^ sentences
]

{ #category : #generated }
CobolParagraphNode >> sentences: anOrderedCollection [
	self setParents: self sentences to: nil.
	sentences := anOrderedCollection.
	self setParents: self sentences to: self
]

{ #category : #generated }
CobolParagraphNode >> tokenVariables [
	^ #(#period)
]
