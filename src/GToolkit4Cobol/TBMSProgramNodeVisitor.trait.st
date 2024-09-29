Trait {
	#name : #TBMSProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
TBMSProgramNodeVisitor >> visitField: aField [
	^ self visitProgram: aField
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitValue: anIdentifier
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitList: aList [
	^ self visitValue: aList
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitMacro: aMacro [
	^ self visitProgram: aMacro
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitValue: aNumber
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitString: aString [
	^ self visitValue: aString
]

{ #category : #generated }
TBMSProgramNodeVisitor >> visitValue: aValue [
	^ self visitProgram: aValue
]
