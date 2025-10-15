Class {
	#name : 'CobolDataUsageClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataUsageClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataUsageClause: self
]

{ #category : 'accessing' }
CobolDataUsageClauseNode >> byteSizeBasedOn: anInteger [
	(#('BINARY' 'COMP' 'COMP-4' 'COMP-5')
		anySatisfy: [ :each | self hasKeyword: each ])
		ifTrue: [ ^ anInteger < 5
				ifTrue: [ 2 ]
				ifFalse: [ anInteger < 10 ifTrue: [ 4 ] ifFalse: [ 8 ] ] ].
	(self hasKeyword: 'COMP-3') ifTrue: [ ^ ((anInteger + 1) / 2) ceiling ].
	(self hasKeyword: 'COMP-1') ifTrue: [ ^ 4 ].
	(self hasKeyword: 'COMP-2') ifTrue: [ ^ 8 ].
	(self hasKeyword: 'POINTER') ifTrue: [ ^ 8 ].
	^ anInteger
]

{ #category : 'generated' }
CobolDataUsageClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDataUsageClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataUsageClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataUsageClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
