Class {
	#name : #CobolSpecialNamesParagraphNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keyword',
		'periods',
		'specialNameClauses'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolSpecialNamesParagraphNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSpecialNamesParagraph: self
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> compositeNodeVariables [
	^ #(#specialNameClauses)
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> compositeTokenVariables [
	^ #(#periods)
]

{ #category : #'generated-initialize-release' }
CobolSpecialNamesParagraphNode >> initialize [
	super initialize.
	periods := OrderedCollection new: 2.
	specialNameClauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> periods [
	^ periods
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> periods: anOrderedCollection [
	periods := anOrderedCollection
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> specialNameClauses [
	^ specialNameClauses
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> specialNameClauses: anOrderedCollection [
	self setParents: self specialNameClauses to: nil.
	specialNameClauses := anOrderedCollection.
	self setParents: self specialNameClauses to: self
]

{ #category : #generated }
CobolSpecialNamesParagraphNode >> tokenVariables [
	^ #(#keyword)
]
