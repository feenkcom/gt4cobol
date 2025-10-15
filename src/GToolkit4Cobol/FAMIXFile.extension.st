Extension { #name : 'FAMIXFile' }

{ #category : '*GToolkit4Cobol' }
FAMIXFile >> gtBMSMapFor: aView [
	<gtView>
	| screen |
	(self name asUppercase endsWith: '.BMS') ifFalse: [ ^ aView empty ].
	screen := self entities
			detect: [ :each | each isKindOf: GtBMSMap ]
			ifNone: [  ].
	screen ifNil: [ ^ aView empty ].
	^ aView forward
		title: 'Screen';
		priority: 0;
		object: [ screen ];
		view: #gtScreenFor:
]
