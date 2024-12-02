Class {
	#name : #GtCICSFile,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'datasetName',
		'jclDataDescriptors',
		'cicsFileAccesses',
		'jclFileReferences',
		'keys'
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
GtCICSFile >> gtFieldsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Fields';
		items: [ | variables |
			variables := self variables
					asSortedCollection: [ :a :b | a components size > b components size ].
			variables isEmpty ifTrue: [ #() ] ifFalse: [ variables first components ] ];
		column: 'Name'
			text: [ :each | 
				| text |
				text := each name asRopedText.
				(self keys anySatisfy: [ :key | each overlaps: key ]) ifTrue: [ text bold ].
				text ];
		column: 'Offset'
			text: [ :each | (each offsets first - each container offsets first) printString ]
			width: 100;
		column: 'Length'
			text: [ :each | each length asString ]
			width: 100
]

{ #category : #views }
GtCICSFile >> gtReferencesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'References';
		items: [ self jclFileReferences ];
		column: 'From' text: [ :each | each from ];
		column: 'To' text: [ :each | each to ]
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

{ #category : #accessing }
GtCICSFile >> keys [
	^ keys ifNil: [ #() ]
]

{ #category : #accessing }
GtCICSFile >> keys: anObject [
	keys := anObject
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
