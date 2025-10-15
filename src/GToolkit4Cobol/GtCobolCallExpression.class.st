Class {
	#name : 'GtCobolCallExpression',
	#superclass : 'FAMIXAssociation',
	#instVars : [
		'fromProgram',
		'toProgram'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
GtCobolCallExpression >> from [
	^ self fromProgram
]

{ #category : 'accessing' }
GtCobolCallExpression >> fromProgram [
	<MSEProperty: #fromProgram type: #GtCobolProgram opposite: #callSources>
	<container>
	^ fromProgram
]

{ #category : 'accessing' }
GtCobolCallExpression >> fromProgram: anObject [
	fromProgram := FMMultivalueLink
			on: self
			update: #callSources
			from: self fromProgram
			to: anObject
]

{ #category : 'as yet unclassified' }
GtCobolCallExpression >> to [
	^ self toProgram
]

{ #category : 'accessing' }
GtCobolCallExpression >> toProgram [
	<MSEProperty: #toProgram type: #GtCobolProgram opposite: #callTargets>
	<container>
	^ toProgram
]

{ #category : 'accessing' }
GtCobolCallExpression >> toProgram: anObject [
	toProgram := FMMultivalueLink
			on: self
			update: #callTargets
			from: self toProgram
			to: anObject
]
