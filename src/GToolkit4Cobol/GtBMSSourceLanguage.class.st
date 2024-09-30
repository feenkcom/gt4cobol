Class {
	#name : #GtBMSSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtBMSSourceLanguage >> gtASTNodeFor: aString at: anInterval [
	| ast |
	ast := BMSParser parseWithErrors: aString.
	ast
		withAllNodesDo: [ :each | 
			(anInterval first <= each startPosition
				and: [ anInterval last = each stopPosition ]) ifTrue: [ ^ each ] ].
	^ nil
]

{ #category : #accessing }
GtBMSSourceLanguage >> gtStyler [
	^ BMSParser gtStyler
]
