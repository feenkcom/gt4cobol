Extension { #name : #MooseModel }

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allBMSMapSets [
	<navigation: 'All BMS MapSets'>
	^ GtBMSMapSetGroup withAll: (self allWithType: GtBMSMapSet)
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allBMSMaps [
	<navigation: 'All BMS Maps'>
	^ self allWithType: GtBMSMap
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCICSFiles [
	<navigation: 'All CICS Files'>
	^ self allWithType: GtCICSFile
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
