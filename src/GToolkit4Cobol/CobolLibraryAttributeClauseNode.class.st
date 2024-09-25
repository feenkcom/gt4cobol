Class {
	#name : #CobolLibraryAttributeClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'values'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolLibraryAttributeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLibraryAttributeClause: self
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolLibraryAttributeClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> values [
	^ values
]

{ #category : #generated }
CobolLibraryAttributeClauseNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
