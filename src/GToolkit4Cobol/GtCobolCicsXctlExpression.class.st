Class {
	#name : #GtCobolCicsXctlExpression,
	#superclass : #GtCobolCicsTransferExpression,
	#instVars : [
		'commonAreaVariable'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolCicsXctlExpression >> commonAreaVariable [
	<MSEProperty: #commonAreaVariable type: #GtCobolVariable opposite: #xctlExpressions>
	<container>
	^ commonAreaVariable
]

{ #category : #accessing }
GtCobolCicsXctlExpression >> commonAreaVariable: anObject [
	commonAreaVariable := FMMultivalueLink
			on: self
			update: #xctlExpressions
			from: self commonAreaVariable
			to: anObject
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
GtCobolCicsXctlExpression >> toPrograms [
	<MSEProperty: #toPrograms type: #GtCobolProgram opposite: #xctlFromExpressions>
	<multivalued>
	^ toPrograms
]
