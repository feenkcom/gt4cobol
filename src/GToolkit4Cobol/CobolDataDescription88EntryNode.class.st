Class {
	#name : #CobolDataDescription88EntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'level',
		'name',
		'clause',
		'period'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataDescription88EntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataDescription88Entry: self
]

{ #category : #generated }
CobolDataDescription88EntryNode >> clause [
	^ clause
]

{ #category : #generated }
CobolDataDescription88EntryNode >> clause: aCobolDataValueClauseNode [
	self clause notNil ifTrue: [ self clause parent: nil ].
	clause := aCobolDataValueClauseNode.
	self clause notNil ifTrue: [ self clause parent: self ]
]

{ #category : #generated }
CobolDataDescription88EntryNode >> level [
	^ level
]

{ #category : #generated }
CobolDataDescription88EntryNode >> level: aSmaCCToken [
	level := aSmaCCToken
]

{ #category : #generated }
CobolDataDescription88EntryNode >> name [
	^ name
]

{ #category : #generated }
CobolDataDescription88EntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolDataDescription88EntryNode >> nodeVariables [
	^ #(#name #clause)
]

{ #category : #generated }
CobolDataDescription88EntryNode >> period [
	^ period
]

{ #category : #generated }
CobolDataDescription88EntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDataDescription88EntryNode >> tokenVariables [
	^ #(#level #period)
]
