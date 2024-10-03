Extension { #name : #AbstractFileReference }

{ #category : #'*GToolkit4Cobol' }
AbstractFileReference >> gtBMSScreenFor: aView [
	<gtView>
	(self extension = 'bms' and: [ self exists ]) ifFalse: [ ^ aView empty ].
	^ aView forward
		title: 'BMS screen';
		object: [ [ GtCobolImporter new importBMSFile: self ] on: Error do: [ :ex | ex return ] ];
		view: #gtScreenFor:
]
