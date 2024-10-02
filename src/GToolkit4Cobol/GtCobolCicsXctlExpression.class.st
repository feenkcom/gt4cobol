Class {
	#name : #GtCobolCicsXctlExpression,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'fromProgram',
		'toPrograms'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolCicsXctlExpression >> from [
	^ fromProgram
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> fromProgram [
	<MSEProperty: #fromProgram type: #GtCobolProgram opposite: #xctlToExpressions>
	<container>
	^ fromProgram
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> fromProgram: anObject [
	fromProgram := FMMultivalueLink
			on: self
			update: #xctlToExpressions
			from: self fromProgram
			to: anObject
]

{ #category : #initialization }
GtCobolCicsXctlExpression >> initialize [
	super initialize.
	toPrograms := FMMultiMultivalueLink on: self opposite: #xctlFromExpressions
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> to [
	^ toPrograms
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> toPrograms [
	<MSEProperty: #toPrograms type: #GtCobolProgram opposite: #xctlFromExpressions>
	<multivalued>
	^ toPrograms
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> toPrograms: anObject [
	toPrograms value: anObject
]
