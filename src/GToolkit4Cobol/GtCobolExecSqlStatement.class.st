Class {
	#name : #GtCobolExecSqlStatement,
	#superclass : #FAMIXBehaviouralEntity,
	#instVars : [
		'source',
		'paragraph'
	],
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #views }
GtCobolExecSqlStatement >> gtReferencedTablesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Referenced tables';
		items: [ self referencedTables ];
		column: 'Table' text: [ :each | each gtDisplayString ]
]

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

{ #category : #'as yet unclassified' }
GtCobolExecSqlStatement >> referencedTables [
	^ self outgoingReferences collect: #to
]

{ #category : #accessing }
GtCobolExecSqlStatement >> source [
	^ source
]

{ #category : #accessing }
GtCobolExecSqlStatement >> source: anObject [
	source := anObject
]
