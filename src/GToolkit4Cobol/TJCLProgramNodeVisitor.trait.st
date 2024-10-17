Trait {
	#name : #TJCLProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
TJCLProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitInlinedValue: anInlinedValue [
	^ self visitValue: anInlinedValue
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitKeywordParameter: aKeywordParameter [
	^ self visitProgram: aKeywordParameter
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitList: aList [
	^ self visitValue: aList
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitName: aName [
	^ self visitValue: aName
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitValue: aNumber
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitProcStatement: aProcStatement [
	^ self visitStatement: aProcStatement
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitString: aString [
	^ self visitValue: aString
]

{ #category : #generated }
TJCLProgramNodeVisitor >> visitValue: aValue [
	^ self visitProgram: aValue
]
