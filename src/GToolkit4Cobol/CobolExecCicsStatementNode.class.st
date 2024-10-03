Class {
	#name : #CobolExecCicsStatementNode,
	#superclass : #CobolStatementNode,
	#instVars : [
		'keywords',
		'items'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolExecCicsStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExecCicsStatement: self
]

{ #category : #accessing }
CobolExecCicsStatementNode >> argumentFor: aString [
	| index token |
	index := 1.
	[ index < items size ]
		whileTrue: [ token := items at: index.
			index := index + 1.
			((token isKindOf: SmaCCToken) and: [ token value sameAs: aString ])
				ifTrue: [ ((items at: index) isKindOf: SmaCCParseNode) ifTrue: [ ^ items at: index ] ] ].
	^ nil
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
	^ items
		anySatisfy: [ :each | (each isKindOf: SmaCCToken) and: [ each value sameAs: 'PROGRAM' ] ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceive [
	^ items
		anySatisfy: [ :each | (each isKindOf: SmaCCToken) and: [ each value sameAs: 'RECEIVE' ] ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isReceiveMapSet [
	^ self isReceive
		and: [ items
				anySatisfy: [ :each | (each isKindOf: SmaCCToken) and: [ each value sameAs: 'MAPSET' ] ] ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSend [
	^ items
		anySatisfy: [ :each | (each isKindOf: SmaCCToken) and: [ each value sameAs: 'SEND' ] ]
]

{ #category : #testing }
CobolExecCicsStatementNode >> isSendMapSet [
	^ self isSend
		and: [ items
				anySatisfy: [ :each | (each isKindOf: SmaCCToken) and: [ each value sameAs: 'MAPSET' ] ] ]
]

{ #category : #generated }
CobolExecCicsStatementNode >> items [
	^ items
]

{ #category : #generated }
CobolExecCicsStatementNode >> items: anObject [
	self setParent: self items to: nil.
	items := anObject.
	self setParent: self items to: self
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
	^ #(#items)
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

{ #category : #accessing }
CobolExecCicsStatementNode >> xctlPrograms [
	^ self potentialValuesFor: 'PROGRAM'
]
