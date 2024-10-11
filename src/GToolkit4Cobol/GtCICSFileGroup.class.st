Class {
	#name : #GtCICSFileGroup,
	#superclass : #MooseGroup,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCICSFileGroup >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		priority: 0;
		items: [ self entities sorted: [ :a :b | a gtDisplayString < b gtDisplayString ] ];
		title: 'Items';
		column: 'Icon'
			iconName: [ :each | each gtIconName ]
			width: 36;
		column: 'DSN' translated text: [ :each | each datasetName ];
		column: 'CICS Name' translated
			text: [ :each | each name = each datasetName ifTrue: [ '' ] ifFalse: [ each name ] ];
		column: 'Description' translated
			text: [ :each | 
				(each privateState attributeAt: #privateDescription ifAbsent: [ '' ])
					gtDisplayString ]
]
