Extension { #name : #MooseModel }

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allBMSMaps [
	<navigation: 'All BMS Maps'>
	^ self allWithType: GtBMSMap
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolPrograms [
	<navigation: 'All Cobol Programs'>
	^ self allWithType: GtCobolProgram
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolVariables [
	<navigation: 'All Cobol Variables'>
	^ self allWithType: GtCobolVariable
]
