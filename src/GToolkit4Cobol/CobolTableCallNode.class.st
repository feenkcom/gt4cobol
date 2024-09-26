Class {
	#name : #CobolTableCallNode,
	#superclass : #CobolExpressionNode,
	#instVars : [
		'name',
		'subscripts',
		'left',
		'position',
		'colon',
		'right',
		'length'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolTableCallNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTableCall: self
]

{ #category : #generated }
CobolTableCallNode >> colon [
	^ colon
]

{ #category : #generated }
CobolTableCallNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CobolTableCallNode >> compositeNodeVariables [
	^ #(#subscripts)
]

{ #category : #'generated-initialize-release' }
CobolTableCallNode >> initialize [
	super initialize.
	subscripts := OrderedCollection new: 2.
]

{ #category : #generated }
CobolTableCallNode >> left [
	^ left
]

{ #category : #generated }
CobolTableCallNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CobolTableCallNode >> length [
	^ length
]

{ #category : #generated }
CobolTableCallNode >> length: aCobolExpressionNode [
	self length notNil ifTrue: [ self length parent: nil ].
	length := aCobolExpressionNode.
	self length notNil ifTrue: [ self length parent: self ]
]

{ #category : #generated }
CobolTableCallNode >> name [
	^ name
]

{ #category : #generated }
CobolTableCallNode >> name: aCobolExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolTableCallNode >> nodeVariables [
	^ #(#name #position #length)
]

{ #category : #generated }
CobolTableCallNode >> position [
	^ position
]

{ #category : #generated }
CobolTableCallNode >> position: aCobolExpressionNode [
	self position notNil ifTrue: [ self position parent: nil ].
	position := aCobolExpressionNode.
	self position notNil ifTrue: [ self position parent: self ]
]

{ #category : #generated }
CobolTableCallNode >> right [
	^ right
]

{ #category : #generated }
CobolTableCallNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CobolTableCallNode >> subscripts [
	^ subscripts
]

{ #category : #generated }
CobolTableCallNode >> subscripts: anOrderedCollection [
	self setParents: self subscripts to: nil.
	subscripts := anOrderedCollection.
	self setParents: self subscripts to: self
]

{ #category : #generated }
CobolTableCallNode >> tokenVariables [
	^ #(#left #colon #right)
]
