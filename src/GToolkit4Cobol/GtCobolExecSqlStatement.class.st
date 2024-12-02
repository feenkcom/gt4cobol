Class {
	#name : #GtCobolExecSqlStatement,
	#superclass : #FAMIXNamedEntity,
	#instVars : [
		'source',
		'paragraph'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtCobolExecSqlStatement >> mooseNameOn: stream [
	| instream |
	self containerFiles notEmpty
		ifTrue: [ self containerFiles any mooseNameOn: stream.
			stream << '.' ].
	paragraph
		ifNotNil: [ paragraph mooseNameOn: stream.
			stream << '.' ]
		ifNil: [  ].
	instream := source readStream.
	instream skipSeparators.
	[ instream atEnd not and: [ instream peek isSeparator not ] ]
		whileTrue: [ stream nextPut: instream next ]
]

{ #category : #accessing }
GtCobolExecSqlStatement >> paragraph [
	<MSEProperty: #paragraph type: #GtCobolParagraph opposite: #execSqlStatements>
	<container>
	^ paragraph
]

{ #category : #accessing }
GtCobolExecSqlStatement >> paragraph: anObject [
	paragraph := FMMultivalueLink
			on: self
			update: #execSqlStatements
			from: self paragraph
			to: anObject
]

{ #category : #accessing }
GtCobolExecSqlStatement >> source [
	^ source
]

{ #category : #accessing }
GtCobolExecSqlStatement >> source: anObject [
	source := anObject
]
