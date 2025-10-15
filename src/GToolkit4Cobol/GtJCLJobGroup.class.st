Class {
	#name : 'GtJCLJobGroup',
	#superclass : 'MooseGroup',
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
GtJCLJobGroup >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		priority: 0;
		items: [ self entities sorted: [ :a :b | a gtDisplayString < b gtDisplayString ] ];
		title: 'Items';
		column: 'Icon'
			iconName: [ :each | each gtIconName ]
			width: 36;
		column: 'Name' translated text: [ :each | each gtDisplayString ];
		column: 'Description' translated text: [ :each | each description ];
		column: 'Steps' translated text: [ :each | each steps size printString ]
]
