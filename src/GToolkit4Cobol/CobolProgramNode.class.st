Class {
	#name : #CobolProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]

{ #category : #private }
CobolProgramNode >> buildDataStructures [
	self attributeNamed: #variables put: Dictionary new.
	self
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :each | each buildDataStructure ].
	self
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :each | each literalValues addAll: each currentValues ]
]

{ #category : #testing }
CobolProgramNode >> hasKeyword: aString [
	^ self keywords anySatisfy: [ :each | each value sameAs: aString ]
]

{ #category : #accessing }
CobolProgramNode >> variables [
	^ self topParent
		attributeNamed: #variables
		ifAbsent: [ self topParent
				buildDataStructures;
				attributeNamed: #variables ]
]

{ #category : #accessing }
CobolProgramNode >> xctlNodes [
	| xctl |
	xctl := OrderedCollection new.
	self
		allNodesOfType: CobolExecCicsStatementNode
		do: [ :node | 
			(node source includesSubstring: 'XCTL' caseSensitive: false)
				ifTrue: [ xctl add: node ] ].
	^ xctl
]

{ #category : #accessing }
CobolProgramNode >> xctlProgramNames [
	^ self xctlNodes flatCollect: #xctlPrograms
]
