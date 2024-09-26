Class {
	#name : #CobolProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
