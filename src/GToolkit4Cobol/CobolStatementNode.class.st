Class {
	#name : #CobolStatementNode,
	#superclass : #CobolProgramNode,
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]

{ #category : #testing }
CobolStatementNode >> writesIdentifier: anIdentifierNode [
	^ false
]
