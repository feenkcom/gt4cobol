Extension { #name : #FAMIXSourcedEntity }

{ #category : #'*GToolkit4Cobol' }
FAMIXSourcedEntity >> gtInspectButtonPosition [
	^ self privateState
		attributeAt: #inspectButtonPosition
		ifAbsent: [ self sourceAnchor ifNotNil: [ :anchor | anchor endPos ] ]
]

{ #category : #'*GToolkit4Cobol' }
FAMIXSourcedEntity >> gtInspectButtonPosition: anInteger [
	^ self privateState attributeAt: #inspectButtonPosition put: anInteger
]
