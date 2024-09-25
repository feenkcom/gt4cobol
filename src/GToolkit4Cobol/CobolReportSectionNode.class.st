Class {
	#name : #CobolReportSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'entries'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolReportSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportSection: self
]

{ #category : #generated }
CobolReportSectionNode >> compositeNodeVariables [
	^ #(#entries)
]

{ #category : #generated }
CobolReportSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolReportSectionNode >> entries [
	^ entries
]

{ #category : #generated }
CobolReportSectionNode >> entries: anOrderedCollection [
	self setParents: self entries to: nil.
	entries := anOrderedCollection.
	self setParents: self entries to: self
]

{ #category : #'generated-initialize-release' }
CobolReportSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	entries := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReportSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReportSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolReportSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolReportSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolReportSectionNode >> tokenVariables [
	^ #(#period)
]
