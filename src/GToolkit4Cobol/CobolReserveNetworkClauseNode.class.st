Class {
	#name : #CobolReserveNetworkClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolReserveNetworkClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitReserveNetworkClause: self
]

{ #category : #generated }
CobolReserveNetworkClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolReserveNetworkClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : #generated }
CobolReserveNetworkClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolReserveNetworkClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
