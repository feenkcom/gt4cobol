Class {
	#name : 'CSDValueNode',
	#superclass : 'CSDExpressionNode',
	#category : 'GToolkit4Cobol-CSD-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'CSD-Parser'
}

{ #category : 'generated' }
CSDValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]

{ #category : 'accessing' }
CSDValueNode >> literalValue [
	^ token source
]
