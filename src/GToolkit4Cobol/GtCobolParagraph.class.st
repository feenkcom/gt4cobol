Class {
	#name : #GtCobolParagraph,
	#superclass : #FAMIXFunction,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #accessing }
GtCobolParagraph >> isInitial [
	^ self privateState attributeAt: #isInitial ifAbsent: [ false ]
]

{ #category : #accessing }
GtCobolParagraph >> isInitial: aBoolean [
	^ self privateState attributeAt: #isInitial put: aBoolean
]
