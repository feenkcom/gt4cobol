Class {
	#name : 'GtCobolSourceFileAnchor',
	#superclass : 'FAMIXIndexedFileEntityAnchor',
	#instVars : [
		'sourceText'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
GtCobolSourceFileAnchor >> completeText [
	^ self sourceText
]

{ #category : 'accessing' }
GtCobolSourceFileAnchor >> sourceText [
	^ sourceText asString
]

{ #category : 'accessing' }
GtCobolSourceFileAnchor >> sourceText: anObject [
	sourceText := anObject
]
