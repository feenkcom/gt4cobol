Class {
	#name : #CobolReportGroupTypeControlFootingNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'controlFooting'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupTypeControlFooting: self
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> controlFooting [
	^ controlFooting
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> controlFooting: aCobolIdentifierNode [
	self controlFooting notNil ifTrue: [ self controlFooting parent: nil ].
	controlFooting := aCobolIdentifierNode.
	self controlFooting notNil ifTrue: [ self controlFooting parent: self ]
]

{ #category : #'generated-initialize-release' }
CobolReportGroupTypeControlFootingNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportGroupTypeControlFootingNode >> nodeVariables [
	^ #(#controlFooting)
]
