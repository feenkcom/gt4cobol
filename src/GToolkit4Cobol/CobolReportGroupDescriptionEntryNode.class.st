Class {
	#name : 'CobolReportGroupDescriptionEntryNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'level',
		'name',
		'clauses',
		'period'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReportGroupDescriptionEntry: self
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : 'generated-initialize-release' }
CobolReportGroupDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> level [
	^ level
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> level: aCobolLiteralNode [
	self level notNil ifTrue: [ self level parent: nil ].
	level := aCobolLiteralNode.
	self level notNil ifTrue: [ self level parent: self ]
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> name [
	^ name
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> nodeVariables [
	^ #(#level #name)
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> period [
	^ period
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : 'generated' }
CobolReportGroupDescriptionEntryNode >> tokenVariables [
	^ #(#period)
]
