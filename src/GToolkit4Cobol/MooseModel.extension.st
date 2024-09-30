Extension { #name : #MooseModel }

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolPrograms [
	<navigation: 'All Cobol Programs'>
	^ self allWithType: GtCobolProgram
]
