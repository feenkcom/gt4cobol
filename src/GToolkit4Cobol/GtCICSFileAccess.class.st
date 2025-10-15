Class {
	#name : 'GtCICSFileAccess',
	#superclass : 'FAMIXAssociation',
	#instVars : [
		'cicsFile',
		'paragraph',
		'variable',
		'ridfld'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCICSFileAccess >> cicsFile [
	<MSEProperty: #cicsFile type: #GtCICSFile opposite: #cicsFileAccesses>
	<container>
	^ cicsFile
]

{ #category : 'accessing' }
GtCICSFileAccess >> cicsFile: anObject [
	cicsFile := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self cicsFile
			to: anObject
]

{ #category : 'accessing' }
GtCICSFileAccess >> from [
	^ self paragraph
]

{ #category : 'accessing' }
GtCICSFileAccess >> paragraph [
	<MSEProperty: #paragraph type: #GtCobolParagraph opposite: #cicsFileAccesses>
	<container>
	^ paragraph
]

{ #category : 'accessing' }
GtCICSFileAccess >> paragraph: anObject [
	paragraph := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self paragraph
			to: anObject
]

{ #category : 'accessing' }
GtCICSFileAccess >> ridfld [
	<MSEProperty: #ridfld type: #GtCobolVariable opposite: #ridfldFileAccesses>
	<container>
	^ ridfld
]

{ #category : 'accessing' }
GtCICSFileAccess >> ridfld: anObject [
	ridfld := FMMultivalueLink
			on: self
			update: #ridfldFileAccesses
			from: self ridfld
			to: anObject
]

{ #category : 'accessing' }
GtCICSFileAccess >> to [
	^ self cicsFile
]

{ #category : 'accessing' }
GtCICSFileAccess >> variable [
	<MSEProperty: #variable type: #GtCobolVariable opposite: #cicsFileAccesses>
	<container>
	^ variable
]

{ #category : 'accessing' }
GtCICSFileAccess >> variable: anObject [
	variable := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self variable
			to: anObject
]
