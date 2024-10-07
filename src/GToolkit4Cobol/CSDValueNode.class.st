Class {
	#name : #CSDValueNode,
	#superclass : #CSDExpressionNode,
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]
