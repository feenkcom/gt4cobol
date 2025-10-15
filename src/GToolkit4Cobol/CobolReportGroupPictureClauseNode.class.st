Class {
	#name : 'CobolReportGroupPictureClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'picture'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupPictureClause: self
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupPictureClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> picture [
	^ picture
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> picture: aSmaCCToken [
	picture := aSmaCCToken
]

{ #category : 'generated' }
CobolReportGroupPictureClauseNode >> tokenVariables [
	^ #(#picture)
]
