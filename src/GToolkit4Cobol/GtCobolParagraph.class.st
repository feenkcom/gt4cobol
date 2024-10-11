Class {
	#name : #GtCobolParagraph,
	#superclass : #FAMIXFunction,
	#instVars : [
		'cicsFileAccesses'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolParagraph >> cicsFileAccesses [
	<MSEProperty: #cicsFileAccesses type: #GtCICSFileAccess opposite: #paragraph>
	^ cicsFileAccesses
]

{ #category : #accessing }
GtCobolParagraph >> cicsFileAccesses: anObject [
	cicsFileAccesses value: anObject
]

{ #category : #initialization }
GtCobolParagraph >> initialize [
	super initialize.
	cicsFileAccesses := FMNullMultivalueLink
			on: self
			opposite: #cicsFile:
			selector: #cicsFileAccesses
]

{ #category : #accessing }
GtCobolParagraph >> isInitial [
	^ self privateState attributeAt: #isInitial ifAbsent: [ false ]
]

{ #category : #accessing }
GtCobolParagraph >> isInitial: aBoolean [
	^ self privateState attributeAt: #isInitial put: aBoolean
]
