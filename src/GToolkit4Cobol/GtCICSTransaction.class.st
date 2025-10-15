Class {
	#name : 'GtCICSTransaction',
	#superclass : 'FAMIXNamedEntity',
	#instVars : [
		'program',
		'group'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCICSTransaction >> group [
	^ group
]

{ #category : 'accessing' }
GtCICSTransaction >> group: anObject [
	group := anObject
]

{ #category : 'accessing' }
GtCICSTransaction >> program [
	<MSEProperty: #program type: #GtCobolProgram opposite: #transaction>
	^ program
]

{ #category : 'accessing' }
GtCICSTransaction >> program: anObject [
	| oldValue |
	anObject == program ifTrue: [ ^ self ].
	program ifNotNil: [ oldValue := program ].
	program := anObject.
	(oldValue notNil and: [ oldValue transaction == self ])
		ifTrue: [ oldValue transaction: nil ]
]
