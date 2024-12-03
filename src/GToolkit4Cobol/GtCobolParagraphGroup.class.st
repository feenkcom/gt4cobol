Class {
	#name : #GtCobolParagraphGroup,
	#superclass : #MooseGroup,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #views }
GtCobolParagraphGroup >> gtPragraphsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Paragraphs';
		priority: -1;
		items: [ self entities sorted: [ :a :b | a gtDisplayString < b gtDisplayString ] ];
		column: 'Paragraph' text: [ :each | each gtDisplayString ];
		column: 'Sql statements' text: [:each | each execSqlStatements size isZero ifTrue: [''] ifFalse: [each execSqlStatements size] ]
]
