Class {
	#name : #BaselineOfGToolkit4Cobol,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4Cobol
}

{ #category : #loading }
BaselineOfGToolkit4Cobol class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt4cobol' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGToolkit4Cobol >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GToolkit4Cobol'
		]
]
