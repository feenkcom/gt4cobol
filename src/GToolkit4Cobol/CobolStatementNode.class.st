Class {
	#name : #CobolStatementNode,
	#superclass : #CobolProgramNode,
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]
