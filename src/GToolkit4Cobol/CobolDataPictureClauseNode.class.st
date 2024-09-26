Class {
	#name : #CobolDataPictureClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'picture'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataPictureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataPictureClause: self
]

{ #category : #generated }
CobolDataPictureClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolDataPictureClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolDataPictureClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolDataPictureClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolDataPictureClauseNode >> picture [
	^ picture
]

{ #category : #generated }
CobolDataPictureClauseNode >> picture: aSmaCCToken [
	picture := aSmaCCToken
]

{ #category : #generated }
CobolDataPictureClauseNode >> tokenVariables [
	^ #(#picture)
]
