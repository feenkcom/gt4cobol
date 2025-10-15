Class {
	#name : 'GtCobolCicsReturnExpression',
	#superclass : 'GtCobolCicsTransferExpression',
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtCobolCicsReturnExpression >> fromProgram [
	<MSEProperty: #fromProgram type: #GtCobolProgram opposite: #returnToExpressions>
	<container>
	^ fromProgram
]

{ #category : 'accessing' }
GtCobolCicsReturnExpression >> fromProgram: anObject [
	fromProgram := FMMultivalueLink
			on: self
			update: #returnToExpressions
			from: self fromProgram
			to: anObject
]

{ #category : 'as yet unclassified' }
GtCobolCicsReturnExpression >> initialize [
	super initialize.
	toPrograms := FMMultiMultivalueLink on: self opposite: #returnFromExpressions
]

{ #category : 'accessing' }
GtCobolCicsReturnExpression >> toPrograms [
	<MSEProperty: #toPrograms type: #GtCobolProgram opposite: #returnFromExpressions>
	<multivalued>
	^ toPrograms
]
