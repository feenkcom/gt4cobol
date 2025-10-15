Class {
	#name : 'IDCAMSProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'GToolkit4Cobol-IDCAMS',
	#package : 'GToolkit4Cobol',
	#tag : 'IDCAMS'
}

{ #category : 'generated' }
IDCAMSProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
