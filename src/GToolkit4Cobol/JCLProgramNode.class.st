Class {
	#name : 'JCLProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]

{ #category : 'as yet unclassified' }
JCLProgramNode >> buildComponents [
]
