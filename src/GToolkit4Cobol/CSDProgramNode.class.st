Class {
	#name : 'CSDProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'GToolkit4Cobol-CSD-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'CSD-Parser'
}

{ #category : 'generated' }
CSDProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
