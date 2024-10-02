Class {
	#name : #CobolExecCicsStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'_source'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecCicsStatementNode >> _source [
	^ _source
]

{ #category : #generated }
CobolExecCicsStatementNode >> _source: aSmaCCToken [
	_source := aSmaCCToken
]

{ #category : #generated }
CobolExecCicsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecCicsStatement: self
]

{ #category : #accessing }
CobolExecCicsStatementNode >> argumentFor: aString [
	| source index cobol count |
	source := _source value.
	index := source asUppercase indexOfSubCollection: aString.
	source := source allButFirst: index + aString size - 1.
	cobol := ''.
	source
		readStreamDo: [ :in | 
			[ in atEnd not
				and: [ (count := cobol occurrencesOf: $() = 0
						or: [ count ~= (cobol occurrencesOf: $)) ] ] ]
				whileTrue: [ cobol := cobol , (in upTo: $)) , ')' ] ].
	^ [ CobolParser
		parse: cobol
		startingAt: CobolParser startingStateForevaluateSelect ]
		on: Error
		do: [ :ex | ex return ]
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
	^ _source value includesSubstring: 'PROGRAM' caseSensitive: false
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceive [
	^ _source value includesSubstring: 'RECEIVE' caseSensitive: false
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceiveMapSet [
	^ (_source value includesSubstring: 'RECEIVE' caseSensitive: false)
		and: [ _source value includesSubstring: 'MAPSET' caseSensitive: false ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSend [
	^ _source value includesSubstring: 'SEND' caseSensitive: false
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSendMapSet [
	^ (_source value includesSubstring: 'SEND' caseSensitive: false)
		and: [ _source value includesSubstring: 'MAPSET' caseSensitive: false ]
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolExecCicsStatementNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #accessing }
CobolExecCicsStatementNode >> map [
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
CobolExecCicsStatementNode >> tokenVariables [
	^ #(#_source)
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
