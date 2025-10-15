Class {
	#name : 'CobolProgramUnitNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'identificationDivision',
		'programUnits',
		'endProgram',
		'procedureDivision',
		'dataDivision',
		'environmentDivision'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProgramUnitNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgramUnit: self
]

{ #category : 'generated' }
CobolProgramUnitNode >> compositeNodeVariables [
	^ #(#programUnits)
]

{ #category : 'generated' }
CobolProgramUnitNode >> dataDivision [
	^ dataDivision
]

{ #category : 'generated' }
CobolProgramUnitNode >> dataDivision: aCobolDataDivisionNode [
	self dataDivision notNil ifTrue: [ self dataDivision parent: nil ].
	dataDivision := aCobolDataDivisionNode.
	self dataDivision notNil ifTrue: [ self dataDivision parent: self ]
]

{ #category : 'generated' }
CobolProgramUnitNode >> endProgram [
	^ endProgram
]

{ #category : 'generated' }
CobolProgramUnitNode >> endProgram: aCobolEndProgramStatementNode [
	self endProgram notNil ifTrue: [ self endProgram parent: nil ].
	endProgram := aCobolEndProgramStatementNode.
	self endProgram notNil ifTrue: [ self endProgram parent: self ]
]

{ #category : 'generated' }
CobolProgramUnitNode >> environmentDivision [
	^ environmentDivision
]

{ #category : 'generated' }
CobolProgramUnitNode >> environmentDivision: aCobolEnvironmentDivisionNode [
	self environmentDivision notNil
		ifTrue: [ self environmentDivision parent: nil ].
	environmentDivision := aCobolEnvironmentDivisionNode.
	self environmentDivision notNil
		ifTrue: [ self environmentDivision parent: self ]
]

{ #category : 'generated' }
CobolProgramUnitNode >> identificationDivision [
	^ identificationDivision
]

{ #category : 'generated' }
CobolProgramUnitNode >> identificationDivision: aCobolIdentificationDivisionNode [
	self identificationDivision notNil
		ifTrue: [ self identificationDivision parent: nil ].
	identificationDivision := aCobolIdentificationDivisionNode.
	self identificationDivision notNil
		ifTrue: [ self identificationDivision parent: self ]
]

{ #category : 'generated-initialize-release' }
CobolProgramUnitNode >> initialize [
	super initialize.
	programUnits := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolProgramUnitNode >> nodeVariables [
	^ #(#identificationDivision #endProgram #procedureDivision #dataDivision #environmentDivision)
]

{ #category : 'generated' }
CobolProgramUnitNode >> procedureDivision [
	^ procedureDivision
]

{ #category : 'generated' }
CobolProgramUnitNode >> procedureDivision: aCobolProcedureDivisionNode [
	self procedureDivision notNil ifTrue: [ self procedureDivision parent: nil ].
	procedureDivision := aCobolProcedureDivisionNode.
	self procedureDivision notNil ifTrue: [ self procedureDivision parent: self ]
]

{ #category : 'generated' }
CobolProgramUnitNode >> programUnits [
	^ programUnits
]

{ #category : 'generated' }
CobolProgramUnitNode >> programUnits: anOrderedCollection [
	self setParents: self programUnits to: nil.
	programUnits := anOrderedCollection.
	self setParents: self programUnits to: self
]
