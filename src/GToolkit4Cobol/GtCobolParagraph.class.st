Class {
	#name : 'GtCobolParagraph',
	#superclass : 'FAMIXFunction',
	#instVars : [
		'cicsFileAccesses',
		'execSqlStatements'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCobolParagraph >> cicsFileAccesses [
	<MSEProperty: #cicsFileAccesses type: #GtCICSFileAccess opposite: #paragraph>
	^ cicsFileAccesses
]

{ #category : 'accessing' }
GtCobolParagraph >> cicsFileAccesses: anObject [
	cicsFileAccesses value: anObject
]

{ #category : 'accessing' }
GtCobolParagraph >> execSqlStatements [
	<MSEProperty: #execSqlStatements type: #GtCobolExecSqlStatement opposite: #paragraph>
	<multivalued>
	^ execSqlStatements
]

{ #category : 'accessing' }
GtCobolParagraph >> execSqlStatements: anObject [
	execSqlStatements value: anObject
]

{ #category : 'views' }
GtCobolParagraph >> gtExecSqlsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'SQLs';
		items: [ self execSqlStatements ];
		column: 'Statement' text: [ :each | each source ]
]

{ #category : 'initialization' }
GtCobolParagraph >> initialize [
	super initialize.
	cicsFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #cicsFile:
			selector: #cicsFileAccesses.
	execSqlStatements := FMNullMultivalueLink
			on: self
			opposite: #paragraph:
			selector: #execSqlStatements
]

{ #category : 'accessing' }
GtCobolParagraph >> isInitial [
	^ self privateState attributeAt: #isInitial ifAbsent: [ false ]
]

{ #category : 'accessing' }
GtCobolParagraph >> isInitial: aBoolean [
	^ self privateState attributeAt: #isInitial put: aBoolean
]
