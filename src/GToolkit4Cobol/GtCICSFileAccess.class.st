Class {
	#name : #GtCICSFileAccess,
	#superclass : #FAMIXAssociation,
	#instVars : [
		'cicsFile',
		'paragraph',
		'variable'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCICSFileAccess >> cicsFile [
	<MSEProperty: #cicsFile type: #GtCICSFile opposite: #cicsFileAccesses>
	<container>
	^ cicsFile
]

{ #category : #accessing }
GtCICSFileAccess >> cicsFile: anObject [
	cicsFile := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self cicsFile
			to: anObject
]

{ #category : #accessing }
GtCICSFileAccess >> from [
	^ self paragraph
]

{ #category : #accessing }
GtCICSFileAccess >> paragraph [
	<MSEProperty: #paragraph type: #GtCobolParagraph opposite: #cicsFileAccesses>
	<container>
	^ paragraph
]

{ #category : #accessing }
GtCICSFileAccess >> paragraph: anObject [
	paragraph := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self paragraph
			to: anObject
]

{ #category : #accessing }
GtCICSFileAccess >> to [
	^ self cicsFile
]

{ #category : #accessing }
GtCICSFileAccess >> variable [
	<MSEProperty: #variable type: #GtCobolVariable opposite: #cicsFileAccesses>
	<container>
	^ variable
]

{ #category : #accessing }
GtCICSFileAccess >> variable: anObject [
	variable := FMMultivalueLink
			on: self
			update: #cicsFileAccesses
			from: self variable
			to: anObject
]
