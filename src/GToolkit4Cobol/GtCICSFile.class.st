Class {
	#name : #GtCICSFile,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'datasetName'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCICSFile >> datasetName [
	^ datasetName
]

{ #category : #accessing }
GtCICSFile >> datasetName: anObject [
	datasetName := anObject
]
