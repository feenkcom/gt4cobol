Class {
	#name : #IDCAMSProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'GToolkit4Cobol-IDCAMS'
}

{ #category : #generated }
IDCAMSProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
