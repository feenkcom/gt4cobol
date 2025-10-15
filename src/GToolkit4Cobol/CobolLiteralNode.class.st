Class {
	#name : 'CobolLiteralNode',
	#superclass : 'CobolExpressionNode',
	#instVars : [
		'value'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolLiteralNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLiteral: self
]

{ #category : 'as yet unclassified' }
CobolLiteralNode >> literalString [
	| str |
	str := value source.
	str first = $'
		ifTrue: [ ^ str allButFirst allButLast copyReplaceAll: '''''' with: '''' ].
	str first = $"
		ifTrue: [ ^ str allButFirst allButLast copyReplaceAll: '""' with: '"' ].
	^ nil
]

{ #category : 'generated' }
CobolLiteralNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
CobolLiteralNode >> value [
	^ value
]

{ #category : 'generated' }
CobolLiteralNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
