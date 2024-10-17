Class {
	#name : #GtJCLStepGroup,
	#superclass : #MooseGroup,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtJCLStepGroup >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		priority: 0;
		items: [ self entities sorted: [ :a :b | a gtDisplayString < b gtDisplayString ] ];
		title: 'Items';
		column: 'Icon'
			iconName: [ :each | each gtIconName ]
			width: 36;
		column: 'Name' translated text: [ :each | each gtDisplayString ];
		column: 'Program' translated
			text: [ :each | each program ifNil: [ '' ] ifNotNil: [ :program | program gtDisplayString ] ];
		column: 'Data descriptors' translated
			text: [ :each | each dataDescriptors size printString ]
]
