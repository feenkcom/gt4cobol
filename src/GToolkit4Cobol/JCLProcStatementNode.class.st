Class {
	#name : 'JCLProcStatementNode',
	#superclass : 'JCLStatementNode',
	#instVars : [
		'statements'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLProcStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcStatement: self
]

{ #category : 'as yet unclassified' }
JCLProcStatementNode >> buildComponents [
	| index current each |
	current := self.
	index := 1.
	[ index < statements size ]
		whileTrue: [ each := statements at: index.
			(each isKindOf: JCLStatementNode)
				ifTrue: [ [ current contains: each ] whileFalse: [ current := current owner ].
					each owner: current.
					current := each ].
			index := index + 1 ].
	statements do: #buildComponents
]

{ #category : 'generated' }
JCLProcStatementNode >> compositeNodeVariables [
	^ #(#statements #values)
]

{ #category : 'generated-initialize-release' }
JCLProcStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
JCLProcStatementNode >> statements [
	^ statements
]

{ #category : 'generated' }
JCLProcStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
