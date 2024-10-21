Class {
	#name : #GtCICSFile,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'datasetName',
		'jclDataDescriptors',
		'cicsFileAccesses',
		'jclFileReferences'
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
GtCICSFile >> fileDescriptors [
	<MSEProperty: #fileDescriptors type: #GtCobolFileDescriptor>
	<derived>
	| vars |
	vars := self jclFileReferences
			flatCollectAsSet: [ :each | each jclDataDescriptor assigns collect: [ :assign | assign fileDescriptor ] ].
	^ vars
]

{ #category : #'as yet unclassified' }
GtCICSFile >> gtVariablesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Variables';
		items: [ self variables sorted: [ :a :b | a mooseName < b mooseName ] ];
		column: 'Name' text: [ :each | each mooseName ];
		column: 'Fields' text: [ :each | each components size ]
]

{ #category : #'as yet unclassified' }
GtCICSFile >> initialize [
	super initialize.
	jclFileReferences := FMNullMultivalueLink
			on: self
			opposite: #cicsFile:
			selector: #jclFileReferences.
	cicsFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #cicsFile:
			selector: #cicsFileAccesses
]

{ #category : #accessing }
GtCICSFile >> jclFileReferences [
	<MSEProperty: #jclFileReferences type: #GtJCLFileReference opposite: #cicsFile>
	<multivalued>
	^ jclFileReferences
]

{ #category : #accessing }
GtCICSFile >> jclFileReferences: anObject [
	jclFileReferences value: anObject
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
	vars := self jclFileReferences
			flatCollectAsSet: [ :each | 
				each jclDataDescriptor assigns
					flatCollect: [ :assign | assign fileDescriptor variables ] ].
	self cicsFileAccesses
		do: [ :each | each variable ifNotNil: [ vars add: each variable ] ].
	^ vars
]
