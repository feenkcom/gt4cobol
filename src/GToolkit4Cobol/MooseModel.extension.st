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
	^ GtCICSFileGroup withAll: (self allWithType: GtCICSFile)
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCICSTransactions [
	<navigation: 'All CICS Transactions'>
	^ self allWithType: GtCICSTransaction
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolConditions [
	<navigation: 'All Cobol Conditions'>
	^ self allWithType: GtCobolCondition
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolPrograms [
	<navigation: 'All Cobol Programs'>
	^ self allWithType: GtCobolProgram
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allCobolVariables [
	<navigation: 'All Cobol File Descriptors'>
	^ self allWithType: GtCobolFileDescriptor
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allJCLJobs [
	<navigation: 'All JCL Jobs'>
	^ GtJCLJobGroup withAll: (self allWithType: GtJCLJob)
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allJCLProcs [
	<navigation: 'All JCL Procs'>
	^ GtJCLProcGroup withAll: (self allWithType: GtJCLProc)
]

{ #category : #'*GToolkit4Cobol' }
MooseModel >> allJCLSteps [
	<navigation: 'All JCL Steps'>
	^ GtJCLStepGroup withAll: (self allWithType: GtJCLStep)
]
