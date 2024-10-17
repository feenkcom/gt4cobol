Class {
	#name : #GtCobolCicsTransferExpression,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'fromProgram',
		'toPrograms'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolCicsTransferExpression >> from [
	^ fromProgram
]

{ #category : #accessing }
GtCobolCicsTransferExpression >> to [
	^ toPrograms
]

{ #category : #accessing }
GtCobolCicsTransferExpression >> toPrograms: anObject [
	toPrograms value: anObject
]
