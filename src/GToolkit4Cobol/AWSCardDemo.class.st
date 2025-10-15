Class {
	#name : 'AWSCardDemo',
	#superclass : 'Object',
	#classInstVars : [
		'asts',
		'model',
		'rootDirectory',
		'copyBookDirectories'
	],
	#category : 'GToolkit4Cobol-AWS Card Demo',
	#package : 'GToolkit4Cobol',
	#tag : 'AWS Card Demo'
}

{ #category : 'accessing' }
AWSCardDemo class >> asts [
	^ asts
]

{ #category : 'accessing' }
AWSCardDemo class >> asts: anObject [
	asts := anObject
]

{ #category : 'cleanup' }
AWSCardDemo class >> cleanup [
	self rootDirectory ensureDeleteAll.
	^ self rootDirectory
]

{ #category : 'accessing' }
AWSCardDemo class >> copyBookDirectories [
	^ copyBookDirectories
]

{ #category : 'accessing' }
AWSCardDemo class >> copyBookDirectories: anObject [
	copyBookDirectories := anObject
]

{ #category : 'initialization' }
AWSCardDemo class >> initializeDownload [
	| repository |
	self rootDirectory
		ifNil: [ self rootDirectory: 'aws-carddemo' asFileReference.
			repository := PureGitRepository on: AWSCardDemo rootDirectory.
			repository operations
				clone: 'git@github.com:aws-samples/aws-mainframe-modernization-carddemo.git'.
			self
				copyBookDirectories: {self rootDirectory / 'app/cpy'.
						self rootDirectory / 'app/cpy-bms'} ].
	^ self rootDirectory
]

{ #category : 'accessing' }
AWSCardDemo class >> model [
	^ model
]

{ #category : 'accessing' }
AWSCardDemo class >> model: anObject [
	model := anObject
]

{ #category : 'accessing' }
AWSCardDemo class >> rootDirectory [
	^ rootDirectory
]

{ #category : 'accessing' }
AWSCardDemo class >> rootDirectory: aFileReference [
	rootDirectory := aFileReference.
	^ aFileReference
]
