Class {
	#name : #CobolSegmentLimitClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'value'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSegmentLimitClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSegmentLimitClause: self
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolSegmentLimitClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> value [
	^ value
]

{ #category : #generated }
CobolSegmentLimitClauseNode >> value: aCobolLiteralNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCobolLiteralNode.
	self value notNil ifTrue: [ self value parent: self ]
]
