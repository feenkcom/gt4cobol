Class {
	#name : #GtCobolImporter,
	#superclass : #Object,
	#instVars : [
		'model',
		'copyBookDirectories',
		'programs',
		'variables',
		'folders',
		'files',
		'currentFile',
		'currentProgram',
		'maps',
		'mapSets'
	],
	#category : #'GToolkit4Cobol-Importer'
}

{ #category : #accessing }
GtCobolImporter >> copyBookDirectories [
	^ copyBookDirectories
]

{ #category : #accessing }
GtCobolImporter >> copyBookDirectories: anObject [
	copyBookDirectories := anObject
]

{ #category : #importing }
GtCobolImporter >> ensureFile: aFileReference [
	| filename |
	filename := aFileReference pathString.
	DiskStore activeClass isCaseSensitive
		ifFalse: [ filename := filename asUppercase ].
	^ files
		at: filename
		ifAbsentPut: [ | file |
			file := FAMIXFile new.
			file name: aFileReference basename.
			aFileReference exists
				ifTrue: [ | encoding anchor |
					encoding := aFileReference size isZero
							ifTrue: [ 'utf-8' ]
							ifFalse: [ [ aFileReference
									binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
									on: ZnCharacterEncodingError
									do: [ :ex | ex return: 'utf-8' ] ].
					anchor := FAMIXIndexedFileEntityAnchor
							file: file
							startPos: 1
							endPos: (aFileReference
									readStreamEncoded: encoding
									do: [ :stream | stream contents size ])
							model: model.
					file sourceAnchor: anchor ]
				ifFalse: [ file isStub: true ].
			(self ensureFolderNamed: aFileReference parent)
				ifNotNil: [ :folder | folder addChildFileSystemEntity: file ].
			model add: file.
			file ]
]

{ #category : #importing }
GtCobolImporter >> ensureFolderNamed: aFileReference [
	self hasImportDirectory ifFalse: [ ^ nil ].
	^ folders
		at: aFileReference pathString
		ifAbsentPut: [ | folder |
			folder := FAMIXFolder new.
			aFileReference = model rootFolder
				ifTrue: [ folder name: '.' ]
				ifFalse: [ folder name: aFileReference basename.
					(self ensureFolderNamed: aFileReference parent)
						ifNotNil: [ :outer | outer addChildFileSystemEntity: folder ] ].
			model add: folder.
			folder ]
]

{ #category : #importing }
GtCobolImporter >> ensureMap: mapName [
	^ maps at: mapName asUppercase ifAbsentPut: [ GtBMSMap new name: mapName ]
]

{ #category : #importing }
GtCobolImporter >> ensureMapSet: mapSetName [
	^ mapSets
		at: mapSetName asUppercase
		ifAbsentPut: [ GtBMSMapSet new name: mapSetName ]
]

{ #category : #importing }
GtCobolImporter >> ensureProgram: aString [
	^ programs
		at: aString asUppercase
		ifAbsentPut: [ GtCobolProgram new
				name: aString;
				mooseModel: model ]
]

{ #category : #importing }
GtCobolImporter >> ensureVariable: node [
	^ node
		attributeNamed: #entity
		ifAbsentPut: [ | var components |
			components := node components.
			var := GtCobolVariable new
					name: (node isFiller ifTrue: [ 'FILLER' ] ifFalse: [ node dataName ]);
					sourceAnchor: (self sourceAnchorFor: node);
					mooseModel: model.
			node attributeNamed: #entity put: var.
			(variables at: var name asUppercase ifAbsentPut: [ OrderedCollection new ])
				add: var.
			currentProgram addGlobalVariable: var.
			components do: [ :each | (self ensureVariable: each) container: var ].
			var length: node byteSize.
			var maxOccurrences: node maxOccurrences.
			node isRedefines
				ifTrue: [ node redefined
						ifNotNil: [ :redef | var redefinesVariable: (self ensureVariable: redef) ] ].
			var ]
]

{ #category : #importing }
GtCobolImporter >> entityFor: aNode [
	^ aNode withAllParents
		detect: [ :each | (each attributeNamed: #entity) notNil ]
		ifFound: [ :each | each attributeNamed: #entity ]
		ifNone: [  ]
]

{ #category : #importing }
GtCobolImporter >> hasImportDirectory [
	^ (model privateState attributeAt: #rootFolder ifAbsent: [  ]) notNil
]

{ #category : #importing }
GtCobolImporter >> importBMSFile: aFileReference [
	| currentMap currentMapSet |
	currentFile := self ensureFile: aFileReference.
	currentFile declaredSourceLanguage: GtBMSSourceLanguage new.
	(BMSParser parseFile: aFileReference) macros
		do: [ :each | 
			(each macro value sameAs: 'DFHMSD')
				ifTrue: [ (each getValue: 'TYPE') = 'FINAL'
						ifFalse: [ | mapSetName |
							mapSetName := each name value.
							currentMapSet := self ensureMapSet: mapSetName.
							currentMapSet
								declaredSourceLanguage: GtBMSSourceLanguage new;
								sourceAnchor: (FAMIXIndexedFileEntityAnchor
										file: currentFile
										startPos: each startPosition
										endPos: each stopPosition
										model: model);
								mooseModel: model ] ].
			(each macro value sameAs: 'DFHMDI')
				ifTrue: [ | mapName |
					mapName := each name value
							ifNil: [ aFileReference basenameWithoutExtension ].
					currentMap := self ensureMap: mapName.
					currentFile addEntity: currentMap.
					currentMap
						mapSet: currentMapSet;
						x: ((each getValue: 'LINE') ifNotNil: [ :v | v asInteger ]);
						y: ((each getValue: 'COLUMN') ifNotNil: [ :v | v asInteger ]);
						width: (each getValue: 'SIZE') second asInteger;
						height: (each getValue: 'SIZE') first asInteger;
						sourceAnchor: (FAMIXIndexedFileEntityAnchor
								file: currentFile
								startPos: each startPosition
								endPos: each stopPosition
								model: model);
						declaredSourceLanguage: GtBMSSourceLanguage new;
						mooseModel: model ].
			(each macro value sameAs: 'DFHMDF')
				ifTrue: [ GtBMSField new
						name: (each name value ifNil: [ 'unnamed' ]);
						length: (each getValue: 'LENGTH') asInteger;
						x: (each getValue: 'POS') second asInteger;
						y: (each getValue: 'POS') first asInteger;
						color: (each getValue: 'COLOR');
						initialValue: (each getValue: 'INITIAL');
						sourceAnchor: (FAMIXIndexedFileEntityAnchor
								file: currentFile
								startPos: each startPosition
								endPos: each stopPosition
								model: model);
						declaredSourceLanguage: GtBMSSourceLanguage new;
						mooseModel: model;
						map: currentMap ] ].
	^ currentMap
]

{ #category : #importing }
GtCobolImporter >> importCSDDefineFile: aDefineNode [
	| cicsFile |
	cicsFile := GtCICSFile new.
	(aDefineNode propertyNamed: 'FILE') ifNotNil: [ :name | cicsFile name: name ].
	(aDefineNode propertyNamed: 'DSNAME')
		ifNotNil: [ :name | cicsFile datasetName: name ].
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :name | cicsFile description: name ].
	cicsFile sourceAnchor: (self sourceAnchorFor: aDefineNode).
	cicsFile mooseModel: model.
	currentFile addEntity: cicsFile
]

{ #category : #importing }
GtCobolImporter >> importCSDFile: aFileReference [
	| groups |
	currentFile := self ensureFile: aFileReference.
	groups := (CSDParser parseFileWithErrors: aFileReference) groups.
	(groups at: 'FILE' ifAbsent: [ #() ])
		do: [ :each | self importCSDDefineFile: each ].
	(groups at: 'PROGRAM' ifAbsent: [ #() ])
		do: [ :each | self importCSDProgram: each ].
	(groups at: 'MAPSET' ifAbsent: [#()])
		do: [ :each | self importCSDMapSet: each ].
]

{ #category : #importing }
GtCobolImporter >> importCSDMapSet: aDefineNode [
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :str | (self ensureMapSet: (aDefineNode propertyNamed: 'MAPSET')) description: str ]
]

{ #category : #importing }
GtCobolImporter >> importCSDProgram: aDefineNode [
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :str | (self ensureProgram: (aDefineNode propertyNamed: 'PROGRAM')) description: str ]
]

{ #category : #importing }
GtCobolImporter >> importDataIn: ast [
	| index |
	index := 1.
	ast
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :node | 
			| var |
			var := self ensureVariable: node.
			var container
				ifNil: [ var isRedefines
						ifFalse: [ var addOffset: index.
							index := index + var totalByteSize ] ] ].
	ast
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :node | 
			node isRedefines
				ifTrue: [ | var |
					var := self ensureVariable: node.
					var redefinesVariable offsets do: [ :each | var addOffset: each ] ] ]
]

{ #category : #importing }
GtCobolImporter >> importDataReferencesIn: ast [
	ast
		withAllNodesOfType: CobolIdentifierNode
		do: [ :each | 
			(each parentOfType: CobolProcedureDivisionNode)
				ifNotNil: [ self importVariableReference: each ] ]
]

{ #category : #importing }
GtCobolImporter >> importDirectory: aDirectory [
	model rootFolder: aDirectory.
	(BMSParser sourceFilesIn: aDirectory) do: [ :each | self importBMSFile: each ].
	(CobolParser sourceFilesIn: aDirectory) do: [ :each | self importFile: each ].
	(CSDParser sourceFilesIn: aDirectory) do: [ :each | self importCSDFile: each ]
]

{ #category : #importing }
GtCobolImporter >> importFile: aFileReference [
	| ast |
	variables := Dictionary new.
	currentFile := self ensureFile: aFileReference.
	ast := CobolParser
			loadSource: aFileReference
			withLibraries: copyBookDirectories.
	currentProgram := self ensureProgram: aFileReference basenameWithoutExtension.
	ast attributeNamed: #entity put: currentProgram.
	currentFile addEntity: currentProgram.
	currentProgram sourceAnchor: (self sourceAnchorFor: ast).
	self
		importDataIn: ast;
		importParagraphsIn: ast;
		importXctlCallsIn: ast;
		importMapCallsIn: ast;
		importDataReferencesIn: ast
]

{ #category : #importing }
GtCobolImporter >> importMapCallsIn: ast [
	ast
		withAllNodesOfType: CobolExecCicsStatementNode
		do: [ :each | 
			| isReceive targets |
			((isReceive := each isReceiveMapSet) or: [ each isSendMapSet ])
				ifTrue: [ targets := each potentialValuesFor: 'MAP'.
					targets isEmpty
						ifTrue: [ GtBMSMapExpression new
								isReceive: isReceive;
								program: currentProgram;
								sourceAnchor: (self sourceAnchorFor: each);
								mooseModel: model ]
						ifFalse: [ targets
								do: [ :map | 
									GtBMSMapExpression new
										isReceive: isReceive;
										program: currentProgram;
										map: (self ensureMap: map);
										sourceAnchor: (self sourceAnchorFor: each);
										mooseModel: model ] ] ] ]
]

{ #category : #importing }
GtCobolImporter >> importParagraphsIn: ast [
	| initial labels |
	initial := true.
	ast
		withAllNodesOfType: CobolProcedureDivisionNode
		do: [ :node | 
			node sentences notEmpty
				ifTrue: [ node
						attributeNamed: #entity
						put: (GtCobolParagraph new
								name: ast topParent filename basenameWithoutExtension;
								isInitial: initial;
								container: currentProgram;
								sourceAnchor: (self sourceAnchorFor: node);
								mooseModel: model).
					initial := false ] ].
	labels := Dictionary new.
	ast
		withAllNodesOfType: CobolParagraphNode
		do: [ :node | 
			node
				attributeNamed: #entity
				put: (labels
						at: node name source
						put: (GtCobolParagraph new
								name: node name source;
								isInitial: initial;
								container: currentProgram;
								sourceAnchor: (self sourceAnchorFor: node);
								mooseModel: model)).
			initial := false ].
	ast
		withAllNodesOfType: CobolGoToStatementNode
		do: [ :goto | 
			goto procedureNames
				do: [ :name | 
					| invocation |
					invocation := FAMIXInvocation new.
					invocation sender: (self entityFor: goto).
					labels
						at: name source
						ifPresent: [ :candidate | invocation addCandidate: candidate ].
					invocation signature: name source.
					invocation mooseModel: model.
					invocation sourceAnchor: (self sourceAnchorFor: goto) ] ].
	ast
		withAllNodesOfType: CobolPerformStatementNode
		do: [ :perform | 
			[ :name | 
			name
				ifNotNil: [ | invocation |
					invocation := FAMIXInvocation new.
					invocation sender: (self entityFor: perform).
					labels
						at: name source
						ifPresent: [ :candidate | invocation addCandidate: candidate ].
					invocation signature: name source.
					invocation mooseModel: model.
					invocation sourceAnchor: (self sourceAnchorFor: perform) ] ]
				value: perform procedureName;
				value: perform thru ]
]

{ #category : #importing }
GtCobolImporter >> importVariableReference: idNode [
	| var vars |
	(idNode parent isKindOf: CobolInExpressionNode)
		ifTrue: [ idNode parent name == idNode ifFalse: [ ^ self ] ].
	vars := variables at: idNode name source asUppercase ifAbsent: [ #() ].
	vars size = 1
		ifTrue: [ var := vars first ]
		ifFalse: [ (idNode parent isKindOf: CobolInExpressionNode)
				ifTrue: [ var := vars
							detect: [ :v | self is: v inContainers: idNode parent inValues ]
							ifNone: [  ] ] ].
	var ifNil: [ ^ self ].
	FAMIXAccess new
		from: ((self entityFor: idNode)
				ifNotNil: [ :entity | (entity isKindOf: FAMIXBehaviouralEntity) ifTrue: [ entity ] ]);
		to: var;
		sourceAnchor: (self sourceAnchorFor: idNode);
		mooseModel: model
]

{ #category : #importing }
GtCobolImporter >> importXctlCallsIn: ast [
	ast xctlNodes
		do: [ :each | 
			| targets |
			targets := each xctlPrograms.
			targets isEmpty
				ifTrue: [ GtCobolCicsXctlExpression new
						fromProgram: currentProgram;
						sourceAnchor: (self sourceAnchorFor: each);
						mooseModel: model ]
				ifFalse: [ GtCobolCicsXctlExpression new
						fromProgram: currentProgram;
						toPrograms: (targets collect: [ :program | self ensureProgram: program ]);
						sourceAnchor: (self sourceAnchorFor: each);
						mooseModel: model ] ]
]

{ #category : #'initialize-release' }
GtCobolImporter >> initialize [
	super initialize.
	folders := Dictionary new.
	files := Dictionary new.
	copyBookDirectories := #().
	model := MooseModel new.
	model sourceLanguage: GtCobolSourceLanguage new.
	programs := Dictionary new.
	variables := Dictionary new.
	maps := Dictionary new.
	mapSets := Dictionary new
]

{ #category : #importing }
GtCobolImporter >> is: var inContainers: aCollection [
	| current index |
	index := 1.
	current := var container.
	[ current isNil or: [ index > aCollection size ] ]
		whileFalse: [ (current name sameAs: (aCollection at: index) source)
				ifTrue: [ index := index + 1 ].
			current := current container ].
	^ index > aCollection size
]

{ #category : #accessing }
GtCobolImporter >> model [
	^ model
]

{ #category : #accessing }
GtCobolImporter >> model: anObject [
	model := anObject
]

{ #category : #importing }
GtCobolImporter >> sourceAnchorFor: aNode [
	^ (GtCobolSourceFileAnchor
		file: currentFile
		startPos: aNode startPosition
		endPos: aNode stopPosition
		model: model)
		sourceText: aNode topParent completeSource;
		yourself
]
