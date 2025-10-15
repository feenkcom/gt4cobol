Class {
	#name : 'GtBMSMapExpression',
	#superclass : 'FAMIXAssociation',
	#instVars : [
		'isReceive',
		'program',
		'map'
	],
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtBMSMapExpression >> expandTo [
	^ map
]

{ #category : 'accessing' }
GtBMSMapExpression >> from [
	^ isReceive ifTrue: [ self map ] ifFalse: [ self program ]
]

{ #category : 'view' }
GtBMSMapExpression >> gtScreenFor: aView [
	<gtView>
	map ifNil: [ ^ aView empty ].
	^ aView forward
		priority: 10;
		title: 'Screen';
		object: [ map ];
		view: #gtScreenFor:
]

{ #category : 'accessing' }
GtBMSMapExpression >> isReceive [
	^ isReceive
]

{ #category : 'accessing' }
GtBMSMapExpression >> isReceive: anObject [
	isReceive := anObject
]

{ #category : 'accessing' }
GtBMSMapExpression >> map [
	<MSEProperty: #map type: #GtBMSMap opposite: #mapExpressions>
	<container>
	^ map
]

{ #category : 'accessing' }
GtBMSMapExpression >> map: anObject [
	map := FMMultivalueLink
			on: self
			update: #mapExpressions
			from: self map
			to: anObject
]

{ #category : 'accessing' }
GtBMSMapExpression >> program [
	<MSEProperty: #program type: #GtCobolProgram opposite: #mapExpressions>
	<container>
	^ program
]

{ #category : 'accessing' }
GtBMSMapExpression >> program: anObject [
	program := FMMultivalueLink
			on: self
			update: #mapExpressions
			from: self program
			to: anObject
]

{ #category : 'accessing' }
GtBMSMapExpression >> to [
	^ isReceive ifTrue: [ self program ] ifFalse: [ self map ]
]
