Class {
	#name : 'JCLStatementNode',
	#superclass : 'JCLProgramNode',
	#instVars : [
		'slashes',
		'operation',
		'values',
		'commas',
		'parameters',
		'name'
	],
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStatement: self
]

{ #category : 'generated' }
JCLStatementNode >> commas [
	^ commas
]

{ #category : 'generated' }
JCLStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'accessing' }
JCLStatementNode >> components [
	^ self attributeNamed: #components ifAbsentPut: [ OrderedCollection new ]
]

{ #category : 'generated' }
JCLStatementNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
JCLStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : 'testing' }
JCLStatementNode >> contains: aStatementNode [
	self owner ifNil: [ ^ true ].
	^ self operationName = 'EXEC' and: [ aStatementNode operationName = 'DD' ]
]

{ #category : 'generated-initialize-release' }
JCLStatementNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : 'testing' }
JCLStatementNode >> isDD [
	^ self operationName = 'DD'
]

{ #category : 'testing' }
JCLStatementNode >> isEXEC [
	^ self operationName = 'EXEC'
]

{ #category : 'testing' }
JCLStatementNode >> isJOB [
	^ self operationName = 'JOB'
]

{ #category : 'testing' }
JCLStatementNode >> isPROC [
	^ self operationName = 'PROC'
]

{ #category : 'generated' }
JCLStatementNode >> name [
	^ name
]

{ #category : 'generated' }
JCLStatementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'accessing' }
JCLStatementNode >> namedParameterNodeOf: aString [
	parameters do: [ :each | each key source = aString ifTrue: [ ^ each value ] ].
	^ nil
]

{ #category : 'accessing' }
JCLStatementNode >> namedParameterValueOf: aString [
	parameters
		do: [ :each | each key source = aString ifTrue: [ ^ each value literalValue ] ].
	^ nil
]

{ #category : 'generated' }
JCLStatementNode >> operation [
	^ operation
]

{ #category : 'generated' }
JCLStatementNode >> operation: aSmaCCToken [
	operation := aSmaCCToken
]

{ #category : 'accessing' }
JCLStatementNode >> operationName [
	^ operation source
]

{ #category : 'generated' }
JCLStatementNode >> otherVariables [
	^ #(#parameters)
]

{ #category : 'accessing' }
JCLStatementNode >> owner [
	^ self attributeNamed: #owner
]

{ #category : 'accessing' }
JCLStatementNode >> owner: aStatementNode [
	self attributeNamed: #owner put: aStatementNode.
	aStatementNode components add: self
]

{ #category : 'generated' }
JCLStatementNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
JCLStatementNode >> parameters: anOrderedCollection [
	self setParent: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParent: self parameters to: self
]

{ #category : 'accessing' }
JCLStatementNode >> positionalParameterValueOf: anInteger [
	^ values size >= anInteger ifTrue: [ (values at: anInteger) literalValue ]
]

{ #category : 'generated' }
JCLStatementNode >> slashes [
	^ slashes
]

{ #category : 'generated' }
JCLStatementNode >> slashes: aSmaCCToken [
	slashes := aSmaCCToken
]

{ #category : 'generated' }
JCLStatementNode >> tokenVariables [
	^ #(#slashes #operation #name)
]

{ #category : 'generated' }
JCLStatementNode >> values [
	^ values
]

{ #category : 'generated' }
JCLStatementNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
