Class {
	#name : #GtCobolProgramGroup,
	#superclass : #MooseGroup,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCobolProgramGroup >> gtProgramDependenciesFor: aView [
	<gtView>
	^ aView mondrian 
		title: 'Dependencies';
		priority: 5;
		painting: [ :m |
			self paintProgramDependenciesWith: m ]
]

{ #category : #'as yet unclassified' }
GtCobolProgramGroup >> paintProgramDependenciesWith: mondrian [
	mondrian nodes
		stencil: [ :program | 
			BrLabel new
				fitContent;
				aptitude: BrGlamorousLabelAptitude new glamorousRegularFontAndSize;
				text: program name asRopedText ];
		with: (self asSortedCollection: [ :a :b | a name < b name ]).
	mondrian edges
		fromRightCenter;
		toLeftCenter;
		connectToAll: [ :each | each xctlToPrograms asSortedCollection: [ :a :b | a name < b name ] ].
	mondrian layout horizontalTree
		nodeDistance: 10;
		levelDistance: 20
]
