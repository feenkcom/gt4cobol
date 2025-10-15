Class {
	#name : 'BMSProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'GToolkit4Cobol-BMS-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'BMS-Parser'
}

{ #category : 'generated' }
BMSProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
