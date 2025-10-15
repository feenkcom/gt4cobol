Class {
	#name : 'JCLValueNode',
	#superclass : 'JCLProgramNode',
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]

{ #category : 'accessing' }
JCLValueNode >> literalValue [
	^ nil
]
