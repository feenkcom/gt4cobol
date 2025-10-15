Class {
	#name : 'GtBMSField',
	#superclass : 'FAMIXStructuralEntity',
	#instVars : [
		'x',
		'y',
		'length',
		'color',
		'initialValue',
		'map'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'private' }
GtBMSField >> applyAttributesOn: aRopedText [
	| index value |
	color ifNil: [ ^ self ].
	(Color respondsTo: color asLowercase asSymbol)
		ifTrue: [ value := self initialValueString.
			index := self map indexForRow: self y andColumn: self x.
			(aRopedText from: index to: index + value size - 1)
				foreground: (Color perform: color asLowercase asSymbol) ]
]

{ #category : 'private' }
GtBMSField >> applyInitialValueOn: aSmaCCString [
	| index value |
	value := self initialValueString.
	value isEmpty ifTrue: [ ^ self ].
	value size > length ifTrue: [ value := value first: length ].
	index := self map indexForRow: self y andColumn: self x.
	aSmaCCString
		replaceFrom: index
		to: index + value size - 1
		with: value
]

{ #category : 'accessing' }
GtBMSField >> color [
	^ color
]

{ #category : 'accessing' }
GtBMSField >> color: anObject [
	color := anObject
]

{ #category : 'accessing' }
GtBMSField >> initialValue [
	^ initialValue ifNil: [ '' ]
]

{ #category : 'accessing' }
GtBMSField >> initialValue: anObject [
	initialValue := anObject
]

{ #category : 'private' }
GtBMSField >> initialValueString [
	| value lines |
	value := self initialValue.
	lines := value lines.
	lines size > 1
		ifTrue: [ value := String
					streamContents: [ :stream | 
						stream nextPutAll: lines first allButLast.
						2
							to: lines size
							do: [ :i | stream nextPutAll: ((lines at: i) allButFirst: 15) ] ] ].
	^ value
]

{ #category : 'accessing' }
GtBMSField >> length [
	^ length
]

{ #category : 'accessing' }
GtBMSField >> length: anObject [
	length := anObject
]

{ #category : 'accessing' }
GtBMSField >> map [
	<MSEProperty: #map type: #GtBMSMap opposite: #fields>
	<container>
	^ map
]

{ #category : 'accessing' }
GtBMSField >> map: anObject [
	map := FMMultivalueLink
			on: self
			update: #fields
			from: self map
			to: anObject
]

{ #category : 'accessing' }
GtBMSField >> x [
	^ x
]

{ #category : 'accessing' }
GtBMSField >> x: anObject [
	x := anObject
]

{ #category : 'accessing' }
GtBMSField >> y [
	^ y
]

{ #category : 'accessing' }
GtBMSField >> y: anObject [
	y := anObject
]
