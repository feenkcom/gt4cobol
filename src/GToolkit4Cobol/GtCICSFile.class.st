Class {
	#name : #GtCICSFile,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'datasetName',
		'jclDataDescriptors',
		'cicsFileAccesses'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCICSFile >> cicsFileAccesses [
	<MSEProperty: #cicsFileAccesses type: #GtCICSFileAccess opposite: #cicsFile>
	^ cicsFileAccesses
]

{ #category : #accessing }
GtCICSFile >> cicsFileAccesses: anObject [
	cicsFileAccesses value: anObject
]

{ #category : #accessing }
GtCICSFile >> datasetName [
	^ datasetName
]

{ #category : #accessing }
GtCICSFile >> datasetName: anObject [
	datasetName := anObject
]

{ #category : #'as yet unclassified' }
GtCICSFile >> initialize [
	super initialize.
	jclDataDescriptors := FMMultiMultivalueLink on: self opposite: #cicsFiles.
	cicsFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #cicsFile:
			selector: #cicsFileAccesses
]

{ #category : #accessing }
GtCICSFile >> jclDataDescriptors [
	<MSEProperty: #jclDataDescriptors type: #GtJCLDataDescriptor opposite: #cicsFiles>
	<multivalued>
	^ jclDataDescriptors
]

{ #category : #accessing }
GtCICSFile >> jclDataDescriptors: anObject [
	jclDataDescriptors := anObject
]

{ #category : #'as yet unclassified' }
GtCICSFile >> mooseNameOn: stream [
	(datasetName notNil and: [ self name ~= datasetName ])
		ifTrue: [ stream << datasetName.
			stream << '(' << self name << ')' ]
		ifFalse: [ super mooseNameOn: stream ]
]

{ #category : #'as yet unclassified' }
GtCICSFile >> variables [
	<MSEProperty: #variables type: #GtCobolVariable>
	<derived>
	| vars |
	vars := self jclDataDescriptors
			flatCollectAsSet: [ :each | each fileDescriptors flatCollect: #variables ].
	self cicsFileAccesses
		do: [ :each | each variable ifNotNil: [ vars add: each variable ] ].
	^ vars
]
