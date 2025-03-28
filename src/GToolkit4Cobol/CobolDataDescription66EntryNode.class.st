Class {
	#name : #CobolDataDescription66EntryNode,
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
CobolDataDescription66EntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataDescription66Entry: self
]

{ #category : #generated }
CobolDataDescription66EntryNode >> clause [
	^ clause
]

{ #category : #generated }
CobolDataDescription66EntryNode >> clause: aCobolDataRenamesClauseNode [
	self clause notNil ifTrue: [ self clause parent: nil ].
	clause := aCobolDataRenamesClauseNode.
	self clause notNil ifTrue: [ self clause parent: self ]
]

{ #category : #accessing }
CobolDataDescription66EntryNode >> dataName [
	^ name ifNotNil: [ name source ]
]

{ #category : #testing }
CobolDataDescription66EntryNode >> hasSpecialLevel [
	^ true
]

{ #category : #generated }
CobolDataDescription66EntryNode >> level [
	^ level
]

{ #category : #generated }
CobolDataDescription66EntryNode >> level: aSmaCCToken [
	level := aSmaCCToken
]

{ #category : #accessing }
CobolDataDescription66EntryNode >> levelNumber [
	^ 88
]

{ #category : #generated }
CobolDataDescription66EntryNode >> name [
	^ name
]

{ #category : #generated }
CobolDataDescription66EntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolDataDescription66EntryNode >> nodeVariables [
	^ #(#name #clause)
]

{ #category : #generated }
CobolDataDescription66EntryNode >> period [
	^ period
]

{ #category : #generated }
CobolDataDescription66EntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolDataDescription66EntryNode >> tokenVariables [
	^ #(#level #period)
]
