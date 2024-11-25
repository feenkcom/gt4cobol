Class {
	#name : #DB2Samples,
	#superclass : #Object,
	#classInstVars : [
		'rootDirectory',
		'model',
		'copyBookDirectories'
	],
	#category : #'GToolkit4Cobol-AWS Card Demo'
}

{ #category : #accessing }
DB2Samples class >> copyBookDirectories [
	^ copyBookDirectories
]

{ #category : #accessing }
DB2Samples class >> copyBookDirectories: anObject [
	copyBookDirectories := anObject
]

{ #category : #accessing }
DB2Samples class >> initializeDownload [
	| repository |
	self rootDirectory
		ifNil: [ self rootDirectory: 'db2-samples' asFileReference.
			repository := IceRepositoryCreator
					fromUrl: 'https://github.com/IBM/db2-samples.git'
					to: self rootDirectory.
			self copyBookDirectories: {self rootDirectory} ].
	^ self rootDirectory
]

{ #category : #accessing }
DB2Samples class >> model [
	^ model
]

{ #category : #accessing }
DB2Samples class >> model: anObject [
	model := anObject
]

{ #category : #accessing }
DB2Samples class >> rootDirectory [
	^ rootDirectory
]

{ #category : #accessing }
DB2Samples class >> rootDirectory: anObject [
	rootDirectory := anObject
]
