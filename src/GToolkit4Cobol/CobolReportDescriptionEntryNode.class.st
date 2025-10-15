Class {
	#name : 'CobolReportDescriptionEntryNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keyword',
		'reportName',
		'period',
		'clauses'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportDescriptionEntry: self
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : 'generated-initialize-release' }
CobolReportDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> keyword [
	^ keyword
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> nodeVariables [
	^ #(#reportName)
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> period [
	^ period
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> reportName [
	^ reportName
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> reportName: aCobolExpressionNode [
	self reportName notNil ifTrue: [ self reportName parent: nil ].
	reportName := aCobolExpressionNode.
	self reportName notNil ifTrue: [ self reportName parent: self ]
]

{ #category : 'generated' }
CobolReportDescriptionEntryNode >> tokenVariables [
	^ #(#keyword #period)
]
