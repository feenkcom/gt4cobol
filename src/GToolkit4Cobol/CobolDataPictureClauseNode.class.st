Class {
	#name : 'CobolDataPictureClauseNode',
	#superclass : 'CobolProgramNode',
	#instVars : [
		'keywords',
		'picture'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
CobolDataPictureClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataPictureClause: self
]

{ #category : 'accessing' }
CobolDataPictureClauseNode >> byteSize [
	| stream length char |
	stream := picture value readStream.
	length := 0.
	[ stream atEnd ]
		whileFalse: [ char := stream next.
			('SVP' includes: char)
				ifFalse: [ (stream peekFor: $()
						ifTrue: [ length := length + (stream upTo: $)) asInteger ]
						ifFalse: [ length := length + 1 ] ] ].
	^ length
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : 'generated-initialize-release' }
CobolDataPictureClauseNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> keywords [
	^ keywords
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> picture [
	^ picture
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> picture: aSmaCCToken [
	picture := aSmaCCToken
]

{ #category : 'generated' }
CobolDataPictureClauseNode >> tokenVariables [
	^ #(#picture)
]
