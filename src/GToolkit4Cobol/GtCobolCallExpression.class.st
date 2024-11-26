Class {
	#name : #GtCobolCallExpression,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'fromProgram',
		'toProgram'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCobolCallExpression >> from [
	^ self fromProgram
]

{ #category : #accessing }
GtCobolCallExpression >> fromProgram [
	<MSEProperty: #fromProgram type: #GtCobolProgram opposite: #callingExpressions>
	<container>
	^ fromProgram
]

{ #category : #accessing }
GtCobolCallExpression >> fromProgram: anObject [
	fromProgram := anObject
]

{ #category : #'as yet unclassified' }
GtCobolCallExpression >> to [
	^ self toProgram
]

{ #category : #accessing }
GtCobolCallExpression >> toProgram [
	<MSEProperty: #toProgram type: #GtCobolProgram opposite: #calledExpressions>
	<container>
	^ toProgram
]

{ #category : #accessing }
GtCobolCallExpression >> toProgram: anObject [
	toProgram := anObject
]
