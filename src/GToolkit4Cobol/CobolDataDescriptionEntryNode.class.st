Class {
	#name : #CobolDataDescriptionEntryNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'level',
		'clauses',
		'period',
		'keyword',
		'name'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolDataDescriptionEntryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDataDescriptionEntry: self
]

{ #category : #private }
CobolDataDescriptionEntryNode >> buildComponents [
	| index children lvl entry nextLevel childLevel |
	index := parent entries
			identityIndexOf: self
			ifAbsent: [ parent entries size + 1 ].
	lvl := self levelNumber.
	self hasSpecialLevel ifTrue: [ ^ #() ].
	children := OrderedCollection new.
	[ index := index + 1.
	index <= parent entries size ]
		whileTrue: [ entry := parent entries at: index.
			nextLevel := entry levelNumber.
			nextLevel <= lvl
				ifTrue: [ index := parent entries size ]
				ifFalse: [ entry hasSpecialLevel
						ifFalse: [ childLevel
								ifNil: [ childLevel := nextLevel.
									children add: entry ]
								ifNotNil: [ childLevel = nextLevel ifTrue: [ children add: entry ] ] ] ] ].
	children do: [ :each | each attributeNamed: #container put: self ].
	^ children
]

{ #category : #private }
CobolDataDescriptionEntryNode >> buildDataStructure [
	| data indices |
	self components.
	self isFiller
		ifFalse: [ self dataName
				ifNotNil: [ :dn | 
					(self topParent variables at: dn ifAbsentPut: [ OrderedCollection new ])
						add: self ] ].
	self isRedefines
		ifTrue: [ ^ self redefined
				ifNotNil: [ :entry | 
					self dataStructure: entry dataStructure.
					self dataIndices: entry dataIndices ] ].
	self container
		ifNil: [ data := ByteArray new: self totalByteSize.
			self dataStructure: data.
			self dataIndices: (OrderedCollection with: 1) ]
		ifNotNil: [ :container | 
			indices := container dataIndices.
			container components
				detect: [ :each | 
					each isRedefines
						ifFalse: [ indices := indices collect: [ :e | e + each totalByteSize ] ].
					each == self ].
			self dataStructure: container dataStructure.
			self dataIndices: (indices collect: [ :e | e - self totalByteSize ]) ].
	self maxOccurrences > 1
		ifTrue: [ self
				dataIndices: (self dataIndices
						flatCollect: [ :i | (0 to: self maxOccurrences - 1) collect: [ :j | i + (j * self byteSize) ] ]) ].
	self initialValue
		ifNotNil: [ :value | 
			(value isKindOf: CobolLiteralNode)
				ifTrue: [ value literalString
						ifNotNil: [ :str | 
							| string bytes |
							string := str size > self byteSize
									ifTrue: [ str first: self byteSize ]
									ifFalse: [ str ].
							self literalValues add: string.
							bytes := string asByteArray.
							self dataStructure
								replaceFrom: self dataIndex
								to: self dataIndex + bytes size - 1
								with: bytes
								startingAt: 1 ] ] ]
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> byteSize [
	^ self
		attributeNamed: #byteSize
		ifAbsentPut: [ | length |
			length := 0.
			self clauses
				detect: [ :each | each isKindOf: CobolDataPictureClauseNode ]
				ifFound: [ :each | length := each byteSize ].
			self clauses
				detect: [ :each | each isKindOf: CobolDataUsageClauseNode ]
				ifFound: [ :each | length := each byteSizeBasedOn: length ].
			length = 0
				ifTrue: [ length := self components
							inject: 0
							into: [ :sum :each | sum + each totalByteSize ] ].
			length ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> clauses [
	^ clauses
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> clauses: anOrderedCollection [
	self setParents: self clauses to: nil.
	clauses := anOrderedCollection.
	self setParents: self clauses to: self
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> components [
	^ self attributeNamed: #components ifAbsentPut: [ self buildComponents ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> compositeNodeVariables [
	^ #(#clauses)
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> container [
	^ self attributeNamed: #container ifAbsent: [  ]
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> currentValues [
	| values bytes |
	values := Set new.
	bytes := self dataStructure.
	self dataIndices
		do: [ :i | 
			i <= bytes size
				ifTrue: [ (bytes at: i) = 0
						ifFalse: [ values add: (bytes copyFrom: i to: i + self byteSize - 1) asString ] ] ].
	^ values
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataIndex [
	^ self dataIndices at: 1 ifAbsent: [  ]
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataIndices [
	^ self attributeNamed: #dataIndices ifAbsentPut: [ OrderedCollection new ]
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataIndices: aCollection [
	^ self attributeNamed: #dataIndices put: aCollection
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataName [
	^ name ifNotNil: [ name source ]
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataStructure [
	^ self attributeNamed: #dataStructure
]

{ #category : #private }
CobolDataDescriptionEntryNode >> dataStructure: bytes [
	^ self attributeNamed: #dataStructure put: bytes
]

{ #category : #private }
CobolDataDescriptionEntryNode >> hasSpecialLevel [
	^ #(66 77 88) includes: self levelNumber
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> initialValue [
	^ self clauses
		detect: [ :each | each isKindOf: CobolDataValueClauseNode ]
		ifFound: [ :each | each values size = 1 ifTrue: [ each values first ] ]
		ifNone: [  ]
]

{ #category : #'generated-initialize-release' }
CobolDataDescriptionEntryNode >> initialize [
	super initialize.
	clauses := OrderedCollection new: 2.
]

{ #category : #testing }
CobolDataDescriptionEntryNode >> isFiller [
	^ self dataName ifNil: [ true ] ifNotNil: [ :each | each sameAs: 'FILLER' ]
]

{ #category : #private }
CobolDataDescriptionEntryNode >> isInsideOf: aCollection [
	| index current |
	index := 1.
	current := self container.
	[ index <= aCollection size ]
		whileTrue: [ ((current dataName ifNil: [ '' ]) sameAs: (aCollection at: index))
				ifTrue: [ index := index + 1 ].
			current := current container ].
	^ index > aCollection size
]

{ #category : #testing }
CobolDataDescriptionEntryNode >> isRedefines [
	^ self clauses
		anySatisfy: [ :each | each isKindOf: CobolDataRedefinesClauseNode ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> keyword [
	^ keyword
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> keyword: aSmaCCToken [
	keyword := aSmaCCToken
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> level [
	^ level
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> level: aSmaCCToken [
	level := aSmaCCToken
]

{ #category : #private }
CobolDataDescriptionEntryNode >> levelNumber [
	^ self level value asInteger
]

{ #category : #private }
CobolDataDescriptionEntryNode >> literalValues [
	^ self attributeNamed: #literalValues ifAbsentPut: [ Set new ]
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> maxOccurrences [
	^ self clauses
		detect: [ :each | each isKindOf: CobolDataOccursClauseNode ]
		ifFound: [ :each | each maxCount ]
		ifNone: [ 1 ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> name [
	^ name
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> name: aCobolIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCobolIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> period [
	^ period
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #testing }
CobolDataDescriptionEntryNode >> redefined [
	^ self clauses
		detect: [ :each | each isKindOf: CobolDataRedefinesClauseNode ]
		ifFound: [ :each | 
			| dataName |
			dataName := each redefines source.
			self parent entries detect: [ :entry | entry dataName = dataName ] ]
		ifNone: [  ]
]

{ #category : #generated }
CobolDataDescriptionEntryNode >> tokenVariables [
	^ #(#level #period #keyword)
]

{ #category : #accessing }
CobolDataDescriptionEntryNode >> totalByteSize [
	^ self
		attributeNamed: #totalByteSize
		ifAbsentPut: [ self byteSize * self maxOccurrences ]
]
