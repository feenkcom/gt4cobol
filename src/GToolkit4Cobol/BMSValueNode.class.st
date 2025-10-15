Class {
	#name : 'BMSValueNode',
	#superclass : 'BMSProgramNode',
	#category : 'GToolkit4Cobol-BMS-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'BMS-Parser'
}

{ #category : 'generated' }
BMSValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]

{ #category : 'accessing' }
BMSValueNode >> literalValue [
	^ self subclassResponsibility
]
