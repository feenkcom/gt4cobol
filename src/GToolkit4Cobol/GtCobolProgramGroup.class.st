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
	^ GtCobolProgram
		paintProgramDependenciesWith: mondrian
		from: (self asSortedCollection: [ :a :b | a name < b name ])
]
