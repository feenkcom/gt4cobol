Class {
	#name : #CSDNumberNode,
	#superclass : #CSDExpressionNode,
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #generated }
CSDNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #accessing }
CSDNumberNode >> literalValue [
	^ token value asNumber
]
