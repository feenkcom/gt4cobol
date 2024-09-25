Class {
	#name : #CobolScreenDescriptionPictureClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'picture'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitScreenDescriptionPictureClause: self
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolScreenDescriptionPictureClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> picture [
	^ picture
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> picture: aSmaCCToken [
	picture := aSmaCCToken
]

{ #category : #generated }
CobolScreenDescriptionPictureClauseNode >> tokenVariables [
	^ #(#picture)
]
