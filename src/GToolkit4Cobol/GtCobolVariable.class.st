Class {
	#name : #GtCobolVariable,
	#superclass : #FAMIXGlobalVariable,
	#instVars : [
		'length',
		'offsets',
		'container',
		'components',
		'potentialValues',
		'redefinesVariable',
		'redefinedByVariables',
		'maxOccurrences'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolVariable >> addOffset: anIndex [
	0
		to: maxOccurrences - 1
		do: [ :i | 
			| index |
			index := anIndex + (i * length).
			offsets add: index.
			self components
				inject: index
				into: [ :sum :each | 
					each isRedefines
						ifTrue: [ sum ]
						ifFalse: [ each addOffset: sum.
							sum + each totalByteSize ] ] ]
]

{ #category : #accessing }
GtCobolVariable >> components [
	<MSEProperty: #components type: #GtCobolVariable opposite: #container>
	<multivalued>
	^ components
]

{ #category : #accessing }
GtCobolVariable >> components: anObject [
	components := anObject
]

{ #category : #accessing }
GtCobolVariable >> container [
	<MSEProperty: #container type: #GtCobolVariable opposite: #components>
	<container>
	^ container
]

{ #category : #accessing }
GtCobolVariable >> container: anObject [
	container := FMMultivalueLink
			on: self
			update: #components
			from: self container
			to: anObject
]

{ #category : #initialization }
GtCobolVariable >> initialize [
	super initialize.
	length := 0.
	maxOccurrences := 1.
	offsets := OrderedCollection new.
	components := FMNullMultivalueLink
			on: self
			opposite: #container:
			selector: #components.
	redefinedByVariables := FMNullMultivalueLink
			on: self
			opposite: #redefinesVariable:
			selector: #redefinedByVariables.
	potentialValues := Set new
]

{ #category : #accessing }
GtCobolVariable >> isRedefines [
	^ redefinesVariable notNil
]

{ #category : #accessing }
GtCobolVariable >> length [
	^ length
]

{ #category : #accessing }
GtCobolVariable >> length: anObject [
	length := anObject
]

{ #category : #accessing }
GtCobolVariable >> maxOccurrences [
	^ maxOccurrences
]

{ #category : #accessing }
GtCobolVariable >> maxOccurrences: anObject [
	maxOccurrences := anObject
]

{ #category : #accessing }
GtCobolVariable >> offsets [
	^ offsets
]

{ #category : #accessing }
GtCobolVariable >> offsets: anObject [
	offsets := anObject
]

{ #category : #accessing }
GtCobolVariable >> redefinedByVariables [
	<MSEProperty: #redefinedByVariables type: #GtCobolVariable opposite: #redefinesVariable>
	<multivalued>
	^ redefinedByVariables
]

{ #category : #accessing }
GtCobolVariable >> redefinedByVariables: anObject [
	redefinedByVariables := anObject
]

{ #category : #accessing }
GtCobolVariable >> redefinesVariable [
	<MSEProperty: #redefinesVariable type: #GtCobolVariable opposite: #redefinedByVariables>
	<container>
	^ redefinesVariable
]

{ #category : #accessing }
GtCobolVariable >> redefinesVariable: anObject [
	redefinesVariable := FMMultivalueLink
			on: self
			update: #redefinedByVariables
			from: self redefinesVariable
			to: anObject
]

{ #category : #accessing }
GtCobolVariable >> totalByteSize [
	^ length * maxOccurrences
]
