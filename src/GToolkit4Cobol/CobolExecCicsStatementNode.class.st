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

{ #category : #generated }
CobolExecCicsStatementNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolExecCicsStatementNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
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
CobolExecCicsStatementNode >> tokenVariables [
	^ #(#_source)
]

{ #category : #accessing }
CobolExecCicsStatementNode >> xctlPrograms [
	| source index program node count |
	source := self source.
	index := source asUppercase indexOfSubCollection: 'PROGRAM'.
	index = 0 ifTrue: [ ^ #() ].
	source := source allButFirst: index + 6.
	program := ''.
	source
		readStreamDo: [ :in | 
			[ in atEnd not
				and: [ (count := program occurrencesOf: $() = 0
						or: [ count ~= (program occurrencesOf: $)) ] ] ]
				whileTrue: [ program := program , (in upTo: $)) , ')' ] ].
	node := [ CobolParser
			parse: program
			startingAt: CobolParser startingStateForevaluateSelect ]
			on: Error
			do: [ :ex | ^ #() ].
	(node isKindOf: CobolTableCallNode) ifTrue: [ node := node name ].
	(node isKindOf: CobolLiteralNode)
		ifTrue: [ node literalString ifNotNil: [ :val | ^ {val} ] ].
	(node isKindOf: CobolIdentifierNode)
		ifTrue: [ (self variables at: node source ifAbsent: [  ])
				ifNotNil: [ :vars | ^ vars flatCollect: [ :each | each literalValues ] ] ].
	^ #()
]
