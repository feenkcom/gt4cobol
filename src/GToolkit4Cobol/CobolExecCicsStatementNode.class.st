Class {
	#name : #CobolExecCicsStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'tokens'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecCicsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecCicsStatement: self
]

{ #category : #accessing }
CobolExecCicsStatementNode >> argumentFor: aString [
	| index count token |
	index := 1.
	count := 0.
	[ index < (tokens size - 2) ]
		whileTrue: [ token := tokens at: index.
			token value = '('
				ifTrue: [ count := count + 1.
					[ index < tokens size and: [ count > 0 ] ]
						whileTrue: [ index := index + 1.
							token := tokens at: index.
							token value = '(' ifTrue: [ count := count + 1 ].
							token value = ')' ifTrue: [ count := count - 1 ] ] ]
				ifFalse: [ ((token value sameAs: aString)
						and: [ (tokens at: index + 1) value = '(' ])
						ifTrue: [ ^ self cobolExpressionAt: index + 2 ] ].
			index := index + 1 ].
	^ nil
]

{ #category : #accessing }
CobolExecCicsStatementNode >> cobolExpressionAt: anIndex [
	^ [ | stream |
	stream := SmaCCLineNumberStream
			on: (ReadStream on: self completeSource asString).
	stream position: (tokens at: anIndex) startPosition - 1.
	CobolParser
		parseEmbeddedStream: stream
		startingAt: CobolParser startingStateForevaluateSelect ]
		on: Error
		do: [ :ex | ex return ]
]

{ #category : #accessing }
CobolExecCicsStatementNode >> cobolExpressions [
	| index count token expressions |
	expressions := OrderedCollection new.
	index := 1.
	count := 0.
	[ index < (tokens size - 1) ]
		whileTrue: [ token := tokens at: index.
			token value = '('
				ifTrue: [ (self cobolExpressionAt: index + 1)
						ifNotNil: [ :expr | expressions add: expr ].
					count := count + 1.
					[ index < tokens size and: [ count > 0 ] ]
						whileTrue: [ index := index + 1.
							token := tokens at: index.
							token value = '(' ifTrue: [ count := count + 1 ].
							token value = ')' ifTrue: [ count := count - 1 ] ] ].
			index := index + 1 ].
	^ expressions
]

{ #category : #generated }
CobolExecCicsStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExecCicsStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #testing }
CobolExecCicsStatementNode >> isProgram [
	^ tokens anySatisfy: [ :each | each value sameAs: 'PROGRAM' ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceive [
	^ tokens anySatisfy: [ :each | each value sameAs: 'RECEIVE' ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceiveMapSet [
	^ self isReceive
		and: [ tokens anySatisfy: [ :each | each value sameAs: 'MAPSET' ] ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSend [
	^ tokens anySatisfy: [ :each | each value sameAs: 'SEND' ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSendMapSet [
	^ self isSend
		and: [ tokens anySatisfy: [ :each | each value sameAs: 'MAPSET' ] ]
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolExecCicsStatementNode >> otherVariables [
	^ #(#tokens)
]

{ #category : #accessing }
CobolExecCicsStatementNode >> potentialValuesFor: aString [
	| node |
	node := self argumentFor: aString.
	node ifNil: [ ^ #() ].
	(node isKindOf: CobolTableCallNode) ifTrue: [ node := node name ].
	(node isKindOf: CobolLiteralNode)
		ifTrue: [ node literalString ifNotNil: [ :val | ^ {val} ] ].
	(node isKindOf: CobolIdentifierNode)
		ifTrue: [ (self variables at: node name source asUppercase ifAbsent: [  ])
				ifNotNil: [ :vars | ^ vars flatCollect: [ :each | each literalValues ] ] ].
	^ #()
]

{ #category : #generated }
CobolExecCicsStatementNode >> tokens [
	^ tokens
]

{ #category : #generated }
CobolExecCicsStatementNode >> tokens: anObject [
	self setParent: self tokens to: nil.
	tokens := anObject.
	self setParent: self tokens to: self
]

{ #category : #accessing }
CobolExecCicsStatementNode >> xctlPrograms [
	| node |
	node := self argumentFor: 'PROGRAM'.
	node ifNil: [ ^ #() ].
	(node isKindOf: CobolTableCallNode) ifTrue: [ node := node name ].
	(node isKindOf: CobolLiteralNode)
		ifTrue: [ node literalString ifNotNil: [ :val | ^ {val} ] ].
	(node isKindOf: CobolIdentifierNode)
		ifTrue: [ (self variables at: node name source ifAbsent: [  ])
				ifNotNil: [ :vars | ^ vars flatCollect: [ :each | each literalValues ] ] ].
	^ #()
]
