Class {
	#name : #GtCobolProgram,
	#superclass : #FAMIXScopingEntity,
	#instVars : [
		'xctlToPrograms',
		'xctlFromPrograms',
		'mapExpressions'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCobolProgram >> gtFunctionsFor: aView [
	<gtView>
	^ aView list
		title: 'Functions';
		items: [ functions ]
]

{ #category : #initialization }
GtCobolProgram >> initialize [
	super initialize.
	xctlFromPrograms := FMMultiMultivalueLink on: self opposite: #xctlToPrograms.
	xctlToPrograms := FMMultiMultivalueLink on: self opposite: #xctlFromPrograms.
	mapExpressions := FMNullMultivalueLink
			on: self
			opposite: #map:
			selector: #mapExpressions
]

{ #category : #accessing }
GtCobolProgram >> mapExpressions [
	<MSEProperty: #mapExpressions type: #GtBMSMapExpression opposite: #program>
	<multivalued>
	^ mapExpressions
]

{ #category : #accessing }
GtCobolProgram >> mapExpressions: anObject [
	mapExpressions value: anObject
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
