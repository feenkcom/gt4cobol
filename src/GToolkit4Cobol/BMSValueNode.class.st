Class {
	#name : #BMSValueNode,
	#superclass : #BMSProgramNode,
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #generated }
BMSValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]
