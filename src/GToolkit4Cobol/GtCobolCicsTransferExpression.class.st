Class {
	#name : 'GtCobolCicsTransferExpression',
	#superclass : 'FAMIXAssociation',
	#instVars : [
		'fromProgram',
		'toPrograms'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCobolCicsTransferExpression >> from [
	^ fromProgram
]

{ #category : 'accessing' }
GtCobolCicsTransferExpression >> to [
	^ toPrograms
]

{ #category : 'accessing' }
GtCobolCicsTransferExpression >> toPrograms: anObject [
	toPrograms value: anObject
]
