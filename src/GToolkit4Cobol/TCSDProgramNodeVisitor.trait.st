Trait {
	#name : 'TCSDProgramNodeVisitor',
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'GToolkit4Cobol-CSD-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'CSD-Parser'
}

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitDefine: aDefine [
	^ self visitProgram: aDefine
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitProperty: aProperty [
	^ self visitProgram: aProperty
]

{ #category : 'generated' }
TCSDProgramNodeVisitor >> visitValue: aValue [
	^ self visitExpression: aValue
]
