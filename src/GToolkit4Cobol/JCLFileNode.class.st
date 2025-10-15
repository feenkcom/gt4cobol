Class {
	#name : 'JCLFileNode',
	#superclass : 'JCLProgramNode',
	#instVars : [
		'statements'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFile: self
]

{ #category : 'accessing' }
JCLFileNode >> buildComponents [
	| index current each |
	current := statements first.
	index := 2.
	[ index <= statements size ]
		whileTrue: [ each := statements at: index.
			(each isKindOf: JCLStatementNode)
				ifTrue: [ [ current contains: each ] whileFalse: [ current := current owner ].
					each owner: current.
					current := each ].
			index := index + 1 ].
	statements do: #buildComponents
]

{ #category : 'generated' }
JCLFileNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : 'generated-initialize-release' }
JCLFileNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
JCLFileNode >> statements [
	^ statements
]

{ #category : 'generated' }
JCLFileNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]
