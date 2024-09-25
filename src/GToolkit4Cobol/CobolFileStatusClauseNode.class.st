Class {
	#name : #CobolFileStatusClauseNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'fileStatusNames'
	],
	#category : #GToolkit4Cobol
}

{ #category : #generated }
CobolFileStatusClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFileStatusClause: self
]

{ #category : #generated }
CobolFileStatusClauseNode >> compositeNodeVariables [
	^ #(#fileStatusNames)
]

{ #category : #generated }
CobolFileStatusClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #generated }
CobolFileStatusClauseNode >> fileStatusNames [
	^ fileStatusNames
]

{ #category : #generated }
CobolFileStatusClauseNode >> fileStatusNames: anOrderedCollection [
	self setParents: self fileStatusNames to: nil.
	fileStatusNames := anOrderedCollection.
	self setParents: self fileStatusNames to: self
]

{ #category : #'generated-initialize-release' }
CobolFileStatusClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	fileStatusNames := OrderedCollection new: 2.
]

{ #category : #generated }
CobolFileStatusClauseNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolFileStatusClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]
