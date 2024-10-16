Class {
	#name : #GtCobolAssignFile,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'fileDescriptor',
		'jclDataDescriptor'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolAssignFile >> fileDescriptor [
	<MSEProperty: #fileDescriptor type: #GtCobolFileDescriptor opposite: #assigns>
	<container>
	^ fileDescriptor
]

{ #category : #accessing }
GtCobolAssignFile >> fileDescriptor: anObject [
	fileDescriptor := FMMultivalueLink
			on: self
			update: #assigns
			from: self fileDescriptor
			to: anObject
]

{ #category : #accessing }
GtCobolAssignFile >> from [
	^ fileDescriptor
]

{ #category : #accessing }
GtCobolAssignFile >> jclDataDescriptor [
	<MSEProperty: #jclDataDescriptor type: #GtJCLDataDescriptor opposite: #assigns>
	<container>
	^ jclDataDescriptor
]

{ #category : #accessing }
GtCobolAssignFile >> jclDataDescriptor: anObject [
	jclDataDescriptor := FMMultivalueLink
			on: self
			update: #assigns
			from: self jclDataDescriptor
			to: anObject
]

{ #category : #accessing }
GtCobolAssignFile >> to [
	^ jclDataDescriptor
]
