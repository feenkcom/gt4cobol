Class {
	#name : #JCLProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
