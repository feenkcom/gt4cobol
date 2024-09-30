Class {
	#name : #GtCobolSourceFileAnchor,
	#superclass : #FAMIXIndexedFileEntityAnchor,
	#instVars : [
		'sourceText'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCobolSourceFileAnchor >> completeText [
	^ self sourceText
]

{ #category : #accessing }
GtCobolSourceFileAnchor >> sourceText [
	^ sourceText asString
]

{ #category : #accessing }
GtCobolSourceFileAnchor >> sourceText: anObject [
	sourceText := anObject
]
