Class {
	#name : #GtCobolSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolSourceLanguage >> gtASTNodeFor: aString at: anInterval [
	| ast |
	ast := CobolParser parseWithErrors: aString.
	ast
		withAllNodesDo: [ :each | 
			(anInterval first <= each startPosition
				and: [ anInterval last = each stopPosition ]) ifTrue: [ ^ each ] ].
	^ nil
]

{ #category : #accessing }
GtCobolSourceLanguage >> gtStyler [
	^ CobolParser cobolStylerWithExpanders
]
