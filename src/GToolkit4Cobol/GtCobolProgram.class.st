Class {
	#name : #GtCobolProgram,
	#superclass : #FAMIXScopingEntity,
	#instVars : [
		'xctlToPrograms',
		'xctlFromPrograms'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #initialization }
GtCobolProgram >> initialize [
	super initialize.
	xctlFromPrograms := FMMultiMultivalueLink on: self opposite: #xctlToPrograms.
	xctlToPrograms := FMMultiMultivalueLink on: self opposite: #xctlFromPrograms
]

{ #category : #accessing }
GtCobolProgram >> xctlFromPrograms [
	<MSEProperty: #xctlFromPrograms type: #GtCobolProgram opposite: #xctlToPrograms>
	<multivalued>
	^ xctlFromPrograms
]

{ #category : #accessing }
GtCobolProgram >> xctlFromPrograms: aCollection [
	xctlFromPrograms value: aCollection
]

{ #category : #accessing }
GtCobolProgram >> xctlToPrograms [
	<MSEProperty: #xctlToPrograms type: #GtCobolProgram opposite: #xctlFromPrograms>
	<multivalued>
	^ xctlToPrograms
]

{ #category : #accessing }
GtCobolProgram >> xctlToPrograms: aCollection [
	xctlToPrograms value: aCollection
]
