Class {
	#name : #CobolProcedureDivisionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'sentences',
		'paragraphs',
		'sections',
		'procedureDeclaratives',
		'clauses'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolProcedureDivisionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureDivision: self
]

{ #category : #generated }
CobolProcedureDivisionNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolProcedureDivisionNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #generated }
CobolProcedureDivisionNode >> compositeNodeVariables [
	^ #(#sentences #paragraphs #sections #clauses)
]

{ #category : #generated }
CobolProcedureDivisionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolProcedureDivisionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	sentences := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
	sections := OrderedCollection new: 2.
	clauses := OrderedCollection new: 2.
]

{ #category : #generated }
CobolProcedureDivisionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolProcedureDivisionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolProcedureDivisionNode >> nodeVariables [
	^ #(#procedureDeclaratives)
]

{ #category : #generated }
CobolProcedureDivisionNode >> paragraphs [
	^ paragraphs
]

{ #category : #generated }
CobolProcedureDivisionNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : #generated }
CobolProcedureDivisionNode >> period [
	^ period
]

{ #category : #generated }
CobolProcedureDivisionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolProcedureDivisionNode >> procedureDeclaratives [
	^ procedureDeclaratives
]

{ #category : #generated }
CobolProcedureDivisionNode >> procedureDeclaratives: aCobolProcedureDeclarativesNode [
	self procedureDeclaratives notNil
		ifTrue: [ self procedureDeclaratives parent: nil ].
	procedureDeclaratives := aCobolProcedureDeclarativesNode.
	self procedureDeclaratives notNil
		ifTrue: [ self procedureDeclaratives parent: self ]
]

{ #category : #generated }
CobolProcedureDivisionNode >> sections [
	^ sections
]

{ #category : #generated }
CobolProcedureDivisionNode >> sections: anOrderedCollection [
	self setParents: self sections to: nil.
	sections := anOrderedCollection.
	self setParents: self sections to: self
]

{ #category : #generated }
CobolProcedureDivisionNode >> sentences [
	^ sentences
]

{ #category : #generated }
CobolProcedureDivisionNode >> sentences: anOrderedCollection [
	self setParents: self sentences to: nil.
	sentences := anOrderedCollection.
	self setParents: self sentences to: self
]

{ #category : #generated }
CobolProcedureDivisionNode >> tokenVariables [
	^ #(#period)
]
