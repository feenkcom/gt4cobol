Class {
	#name : #CobolProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
