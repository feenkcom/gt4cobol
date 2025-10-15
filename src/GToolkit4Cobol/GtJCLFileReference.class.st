Class {
	#name : 'GtJCLFileReference',
	#superclass : 'FAMIXAssociation',
	#instVars : [
		'cicsFile',
		'jclDataDescriptor'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtJCLFileReference >> cicsFile [
	<MSEProperty: #cicsFile type: #GtCICSFile opposite: #jclFileReferences>
	<container>
	^ cicsFile
]

{ #category : 'accessing' }
GtJCLFileReference >> cicsFile: anObject [
	cicsFile := FMMultivalueLink
			on: self
			update: #jclFileReferences
			from: self cicsFile
			to: anObject
]

{ #category : 'accessing' }
GtJCLFileReference >> from [
	^ jclDataDescriptor
]

{ #category : 'accessing' }
GtJCLFileReference >> jclDataDescriptor [
	<MSEProperty: #jclDataDescriptor type: #GtJCLDataDescriptor opposite: #jclFileReferences>
	<container>
	^ jclDataDescriptor
]

{ #category : 'accessing' }
GtJCLFileReference >> jclDataDescriptor: anObject [
	jclDataDescriptor := FMMultivalueLink
			on: self
			update: #jclFileReferences
			from: self jclDataDescriptor
			to: anObject
]

{ #category : 'accessing' }
GtJCLFileReference >> to [
	^ cicsFile
]
