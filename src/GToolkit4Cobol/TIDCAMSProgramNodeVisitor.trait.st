Trait {
	#name : #TIDCAMSProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'GToolkit4Cobol-IDCAMS'
}

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitAssignment: anAssignment [
	^ self visitProgram: anAssignment
]

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitParameters: aParameters [
	^ self visitProgram: aParameters
]

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitStep: aStep [
	^ self visitProgram: aStep
]

{ #category : #generated }
TIDCAMSProgramNodeVisitor >> visitValue: aValue [
	^ self visitProgram: aValue
]
