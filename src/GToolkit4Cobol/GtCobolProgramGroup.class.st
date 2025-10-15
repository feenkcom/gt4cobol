Class {
	#name : 'GtCobolProgramGroup',
	#superclass : 'MooseGroup',
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCobolProgramGroup >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		priority: 0;
		items: [ self entities sorted: [ :a :b | a gtDisplayString < b gtDisplayString ] ];
		title: 'Items';
		column: 'Icon'
			iconName: [ :each | each gtIconName ]
			width: 36;
		column: 'Name' translated text: [ :each | each gtDisplayString ];
		column: 'Description' translated
			text: [ :each | 
				(each privateState attributeAt: #privateDescription ifAbsent: [ '' ])
					gtDisplayString ];
		column: 'Stub?'
			text: [ :each | each isStub ifTrue: [ 'X' ] ifFalse: [ '' ] ]
			width: 45
]

{ #category : 'as yet unclassified' }
GtCobolProgramGroup >> gtProgramDependenciesFor: aView [
	<gtView>
	^ aView mondrian 
		title: 'Dependencies';
		priority: 5;
		painting: [ :m |
			self paintProgramDependenciesWith: m ]
]

{ #category : 'as yet unclassified' }
GtCobolProgramGroup >> paintProgramDependenciesWith: mondrian [
	^ GtCobolProgram
		paintProgramDependenciesWith: mondrian
		from: (self asSortedCollection: [ :a :b | a name < b name ])
]
