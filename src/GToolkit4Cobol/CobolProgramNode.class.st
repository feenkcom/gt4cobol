Class {
	#name : 'CobolProgramNode',
	#superclass : 'SmaCCParseNode',
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]

{ #category : 'private' }
CobolProgramNode >> buildDataStructures [
	| data variables |
	data := OrderedCollection new.
	self attributeNamed: #variables put: (variables := Dictionary new).
	self
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :each | 
			data add: each.
			each buildDataStructure ].
	data do: [ :each | each literalValues addAll: each currentValues ].
	self
		withAllNodesOfType: CobolMoveStatementNode
		do: [ :node | 
			| values |
			values := #().
			(node moveToSendingArea isKindOf: CobolIdentifierNode)
				ifTrue: [ variables
						at: node moveToSendingArea name source asUppercase
						ifPresent: [ :vars | values := vars flatCollectAsSet: [ :var | var literalValues ] ] ].
			(node moveToSendingArea isKindOf: CobolLiteralNode)
				ifTrue: [ node moveToSendingArea literalString ifNotNil: [ :str | values := {str} ] ].
			values notEmpty
				ifTrue: [ node tos
						do: [ :to | 
							(to isKindOf: CobolIdentifierNode)
								ifTrue: [ variables
										at: to name source asUppercase
										ifPresent: [ :vars | vars do: [ :var | var literalValues addAll: values ] ] ] ] ] ]
]

{ #category : 'testing' }
CobolProgramNode >> hasKeyword: aString [
	^ self keywords anySatisfy: [ :each | each value sameAs: aString ]
]

{ #category : 'testing' }
CobolProgramNode >> isVariableWritten: idNode [
	^ parent ifNil: [ false ] ifNotNil: [ parent isVariableWritten: idNode ]
]

{ #category : 'accessing' }
CobolProgramNode >> variables [
	^ self topParent
		attributeNamed: #variables
		ifAbsent: [ self topParent
				buildDataStructures;
				attributeNamed: #variables ]
]

{ #category : 'accessing' }
CobolProgramNode >> xctlNodes [
	| xctl |
	xctl := OrderedCollection new.
	self
		allNodesOfType: CobolExecCicsStatementNode
		do: [ :node | (node is: 'XCTL') ifTrue: [ xctl add: node ] ].
	^ xctl
]

{ #category : 'accessing' }
CobolProgramNode >> xctlProgramNames [
	^ self xctlNodes flatCollect: #xctlPrograms
]
