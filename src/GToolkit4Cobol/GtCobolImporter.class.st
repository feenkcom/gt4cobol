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
		'mapSets',
		'jobs',
		'cicsFiles',
		'jclSourceLanguage',
		'bmsSourceLanguage',
		'csdSourceLanguage',
		'finishActions',
		'tables',
		'stubbedVariables'
	],
	#category : #'GToolkit4Cobol-Importer'
}

{ #category : #'importing-cobol' }
GtCobolImporter >> addCommonAreaAssignmentFor: targets from: aNode in: aFile [
	targets
		do: [ :program | 
			(self ensureProgram: program) globalVariables
				detect: [ :each | each name sameAs: 'DFHCOMMAREA' ]
				ifFound: [ :var | 
					aFile
						addEntity: (FAMIXAccess new
								from: ((self entityFor: aNode)
										ifNotNil: [ :entity | (entity isKindOf: FAMIXBehaviouralEntity) ifTrue: [ entity ] ]);
								to: var;
								isWrite: true;
								sourceAnchor: ((GtCobolSourceFileAnchor
										file: aFile
										startPos: aNode startPosition
										endPos: aNode stopPosition
										model: model)
										sourceText: (self completeSourceFor: aNode);
										yourself);
								mooseModel: model) ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> addReturnAssignmentsFor: program from: aNode [
	| file |
	file := program containerFiles first.
	file
		addEntity: (GtCobolCicsReturnExpression new
				fromProgram: program;
				toPrograms: (program xctlFromExpressions collectAsSet: [ :each | each fromProgram ]);
				sourceAnchor: ((GtCobolSourceFileAnchor
						file: file
						startPos: aNode startPosition
						endPos: aNode stopPosition
						model: model)
						sourceText: (self completeSourceFor: aNode);
						yourself);
				mooseModel: model).
	(aNode argumentFor: 'COMMAREA')
		ifNotNil: [ program xctlFromExpressions
				do: [ :each | 
					each commonAreaVariable
						ifNotNil: [ :var | 
							file
								addEntity: (FAMIXAccess new
										from: ((self entityFor: aNode)
												ifNotNil: [ :entity | (entity isKindOf: FAMIXBehaviouralEntity) ifTrue: [ entity ] ]);
										to: var;
										isWrite: true;
										sourceAnchor: ((GtCobolSourceFileAnchor
												file: file
												startPos: aNode startPosition
												endPos: aNode stopPosition
												model: model)
												sourceText: (self completeSourceFor: aNode);
												yourself);
										mooseModel: model) ] ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> completeSourceFor: aNode [
	^ aNode topParent
		attributeNamed: #completeSourceString
		ifAbsentPut: [ aNode topParent completeSource ]
]

{ #category : #accessing }
GtCobolImporter >> copyBookDirectories [
	^ copyBookDirectories
]

{ #category : #accessing }
GtCobolImporter >> copyBookDirectories: anObject [
	copyBookDirectories := anObject
]

{ #category : #'importing-cobol' }
GtCobolImporter >> ensureCondition: node [
	^ node
		attributeNamed: #entity
		ifAbsentPut: [ | cond index |
			index := node parent entries identityIndexOf: node.
			[ index := index - 1.
			(node parent entries at: index) isKindOf: CobolDataDescriptionEntryNode ]
				whileFalse.
			cond := GtCobolCondition new
					name: node dataName;
					variable: ((node parent entries at: index) attributeNamed: #entity);
					sourceAnchor: (self sourceAnchorFor: node);
					mooseModel: model.
			node attributeNamed: #entity put: cond.
			(variables at: cond name asUppercase ifAbsentPut: [ OrderedCollection new ])
				add: cond.
			currentProgram addGlobalVariable: cond.
			currentFile addEntity: cond.
			cond ]
]

{ #category : #private }
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

{ #category : #private }
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

{ #category : #'importing-jcl' }
GtCobolImporter >> ensureJCLJob: aName [
	^ jobs at: aName asUppercase ifAbsentPut: [ GtJCLJob new name: aName ]
]

{ #category : #'importing-bms' }
GtCobolImporter >> ensureMap: mapName [
	^ maps at: mapName asUppercase ifAbsentPut: [ GtBMSMap new name: mapName ]
]

{ #category : #'importing-bms' }
GtCobolImporter >> ensureMapSet: mapSetName [
	^ mapSets
		at: mapSetName asUppercase
		ifAbsentPut: [ GtBMSMapSet new name: mapSetName ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> ensureProgram: aString [
	^ programs
		at: aString asUppercase
		ifAbsentPut: [ GtCobolProgram new
				isStub: true;
				name: aString;
				mooseModel: model ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> ensureStubVariable: aString [
	stubbedVariables ifNil: [ stubbedVariables := Dictionary new ].
	^ stubbedVariables
		at: aString
		ifAbsentPut: [ GtCobolVariable new
				name: aString;
				mooseModel: model;
				isStub: true ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> ensureTableNamed: tbl [
	^ tables
		at: tbl
		ifAbsentPut: [ GtTable new
				name: tbl;
				mooseModel: model ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> ensureVariable: node [
	^ node
		attributeNamed: #entity
		ifAbsentPut: [ | var components end |
			components := node components.
			var := GtCobolVariable new
					name: (node isFiller ifTrue: [ 'FILLER' ] ifFalse: [ node dataName ]);
					sourceAnchor: (self sourceAnchorFor: node);
					mooseModel: model.
			node attributeNamed: #entity put: var.
			(variables at: var name asUppercase ifAbsentPut: [ OrderedCollection new ])
				add: var.
			currentProgram addGlobalVariable: var.
			var gtInspectButtonPosition: node stopPosition.
			end := var sourceAnchor endPos.
			components
				do: [ :each | 
					| compVar |
					compVar := self ensureVariable: each.
					compVar container: var.
					end := end max: compVar sourceAnchor endPos ].
			var sourceAnchor endPos: end.
			var length: node byteSize.
			var maxOccurrences: node maxOccurrences.
			node isRedefines
				ifTrue: [ node redefined
						ifNotNil: [ :redef | var redefinesVariable: (self ensureVariable: redef) ] ].
			currentFile addEntity: var.
			var ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> entityFor: aNode [
	^ aNode withAllParents
		detect: [ :each | (each attributeNamed: #entity) notNil ]
		ifFound: [ :each | each attributeNamed: #entity ]
		ifNone: [  ]
]

{ #category : #importing }
GtCobolImporter >> finishImport [
	self importDataSetIndices.
	finishActions do: [ :each | each value ]
]

{ #category : #testing }
GtCobolImporter >> hasImportDirectory [
	^ (model privateState attributeAt: #rootFolder ifAbsent: [  ]) notNil
]

{ #category : #'importing-bms' }
GtCobolImporter >> importBMSFile: aFileReference [
	| currentMap currentMapSet |
	currentFile := self ensureFile: aFileReference.
	currentFile declaredSourceLanguage: bmsSourceLanguage.
	(BMSParser parseFile: aFileReference) macros
		do: [ :each | 
			(each macro value sameAs: 'DFHMSD')
				ifTrue: [ (each getValue: 'TYPE') = 'FINAL'
						ifFalse: [ | mapSetName |
							mapSetName := each name value.
							currentMapSet := self ensureMapSet: mapSetName.
							currentMapSet
								declaredSourceLanguage: bmsSourceLanguage;
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
						declaredSourceLanguage: bmsSourceLanguage;
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
						declaredSourceLanguage: bmsSourceLanguage;
						mooseModel: model;
						map: currentMap ] ].
	^ currentMap
]

{ #category : #'importing-csd' }
GtCobolImporter >> importCSDDefineFile: aDefineNode [
	| cicsFile |
	cicsFile := GtCICSFile new.
	cicsFiles add: cicsFile.
	(aDefineNode propertyNamed: 'FILE') ifNotNil: [ :name | cicsFile name: name ].
	(aDefineNode propertyNamed: 'DSNAME')
		ifNotNil: [ :name | cicsFile datasetName: name ].
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :name | cicsFile description: name ].
	cicsFile declaredSourceLanguage: csdSourceLanguage.
	cicsFile
		sourceAnchor: (FAMIXIndexedFileEntityAnchor
				file: currentFile
				startPos: aDefineNode startPosition
				endPos: aDefineNode stopPosition
				model: model).
	cicsFile mooseModel: model.
	currentFile addEntity: cicsFile
]

{ #category : #'importing-csd' }
GtCobolImporter >> importCSDFile: aFileReference [
	| groups |
	currentFile := self ensureFile: aFileReference.
	currentFile declaredSourceLanguage: csdSourceLanguage.
	groups := (CSDParser parseFileWithErrors: aFileReference) groups.
	(groups at: 'FILE' ifAbsent: [ #() ])
		do: [ :each | self importCSDDefineFile: each ].
	(groups at: 'PROGRAM' ifAbsent: [ #() ])
		do: [ :each | self importCSDProgram: each ].
	(groups at: 'MAPSET' ifAbsent: [ #() ])
		do: [ :each | self importCSDMapSet: each ].
	(groups at: 'TRANSACTION' ifAbsent: [ #() ])
		do: [ :each | self importCSDTransaction: each ]
]

{ #category : #'importing-csd' }
GtCobolImporter >> importCSDMapSet: aDefineNode [
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :str | (self ensureMapSet: (aDefineNode propertyNamed: 'MAPSET')) description: str ]
]

{ #category : #'importing-csd' }
GtCobolImporter >> importCSDProgram: aDefineNode [
	(aDefineNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :str | (self ensureProgram: (aDefineNode propertyNamed: 'PROGRAM')) description: str ]
]

{ #category : #'importing-csd' }
GtCobolImporter >> importCSDTransaction: aNode [
	| transaction |
	transaction := GtCICSTransaction new.
	transaction name: (aNode propertyNamed: 'TRANSACTION').
	(aNode propertyNamed: 'GROUP') ifNotNil: [ :name | transaction group: name ].
	(aNode propertyNamed: 'PROGRAM')
		ifNotNil: [ :name | transaction program: (self ensureProgram: name) ].
	(aNode propertyNamed: 'DESCRIPTION')
		ifNotNil: [ :name | transaction description: name ].
	transaction declaredSourceLanguage: csdSourceLanguage.
	transaction
		sourceAnchor: (FAMIXIndexedFileEntityAnchor
				file: currentFile
				startPos: aNode startPosition
				endPos: aNode stopPosition
				model: model).
	transaction mooseModel: model.
	currentFile addEntity: transaction
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importCallsIn: ast [
	ast
		withAllNodesOfType: CobolCallStatementNode
		do: [ :each | 
			| call |
			call := GtCobolCallExpression new fromProgram: currentProgram.
			(each call isKindOf: CobolLiteralNode)
				ifTrue: [ each call literalString
						ifNotNil: [ :name | call toProgram: (self ensureProgram: name) ] ].
			call sourceAnchor: (self sourceAnchorFor: each).
			currentFile addEntity: call.
			call gtInspectButtonPosition: each call stopPosition.
			call mooseModel: model ]
]

{ #category : #'importing-cobol' }
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
		withAllNodesOfType: CobolDataDescription88EntryNode
		do: [ :node | self ensureCondition: node ].
	ast
		withAllNodesOfType: CobolDataDescriptionEntryNode
		do: [ :node | 
			node isRedefines
				ifTrue: [ | var |
					var := self ensureVariable: node.
					var redefinesVariable offsets do: [ :each | var addOffset: each ] ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importDataReferencesIn: ast [
	ast
		withAllNodesOfType: CobolIdentifierNode
		do: [ :each | 
			(each
				parentOfType: {CobolProcedureDivisionNode.
						CobolEnvironmentDivisionNode})
				ifNotNil: [ self importVariableReference: each ] ]
]

{ #category : #importing }
GtCobolImporter >> importDataSetIndices [
	model allCobolPrograms
		detect: [ :each | each name = 'IDCAMS' ]
		ifFound: [ :program | 
			program jclSteps
				do: [ :step | 
					step dataDescriptors
						detect: [ :dd | dd name = 'SYSIN' ]
						ifFound: [ :dd | dd input ifNotNil: [ :input | self importIDCAMS: input ] ] ] ]
]

{ #category : #importing }
GtCobolImporter >> importDirectory: aDirectory [
	model rootFolder: aDirectory.
	(BMSParser sourceFilesIn: aDirectory) do: [ :each | self importBMSFile: each ].
	(CSDParser sourceFilesIn: aDirectory) do: [ :each | self importCSDFile: each ].
	(CobolParser sourceFilesIn: aDirectory) do: [ :each | self importFile: each ].
	(JCLParser sourceFilesIn: aDirectory) do: [ :each | self importJCLFile: each ].
	self finishImport
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importFile: aFileReference [
	| ast |
	variables := Dictionary new.
	currentFile := self ensureFile: aFileReference.
	ast := [ CobolParser
			loadSource: aFileReference
			withLibraries: copyBookDirectories ] on: Error do: [ :ex | ^ self ].
	currentProgram := self ensureProgram: aFileReference basenameWithoutExtension.
	currentProgram isStub: false.
	ast attributeNamed: #entity put: currentProgram.
	currentFile addEntity: currentProgram.
	currentProgram sourceAnchor: (self sourceAnchorFor: ast).
	self
		importDataIn: ast;
		importParagraphsIn: ast;
		importReturnsIn: ast;
		importMapCallsIn: ast;
		importDataReferencesIn: ast;
		importSqlIn: ast;
		importFileDescriptorsIn: ast;
		importFileReadWritesIn: ast;
		importXctlCallsIn: ast;
		importCallsIn: ast
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importFileDescriptorsIn: ast [
	| descriptor descriptors |
	descriptors := Dictionary new.
	ast
		withAllNodesOfType: CobolFileDescriptionEntryNode
		do: [ :node | 
			descriptor := GtCobolFileDescriptor new
					name: node fileName source;
					program: currentProgram;
					mooseModel: model;
					sourceAnchor: (self sourceAnchorFor: node).
			descriptor gtInspectButtonPosition: node fileName stopPosition.
			descriptors at: descriptor name put: descriptor.
			(node entries first attributeNamed: #entity)
				ifNotNil: [ :entity | descriptor variables add: entity ].
			currentFile addEntity: descriptor ].
	ast
		withAllNodesOfType: CobolFileControlEntryNode
		do: [ :node | 
			descriptors
				at: node selectClause fileName source
				ifPresent: [ :d | 
					node
						allNodesOfType: CobolFileStatusClauseNode
						do: [ :each | 
							d
								fileStatusVariables: ((each fileStatusNames collect: [ :e | e attributeNamed: #referenceTo ])
										reject: #isNil) ].
					node
						allNodesOfType: CobolRecordKeyClauseNode
						do: [ :each | d recordKey: (each keyName attributeNamed: #referenceTo) ].
					node
						allNodesOfType: CobolAssignClauseNode
						do: [ :each | 
							each assignment
								ifNotNil: [ finishActions add: [ self linkFileDescriptor: d toJCLDD: each ] ] ] ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importFileReadWritesIn: ast [
	ast
		withAllNodesOfType: CobolReadStatementNode
		do: [ :node | 
			node into
				ifNotNil: [ (self variableForNode: node into)
						ifNotNil: [ :var | 
							(currentProgram fileDescriptors
								detect: [ :each | each name = node fileName source ]
								ifNone: [  ]) ifNotNil: [ :fd | fd variables add: var ] ] ] ].
	ast
		withAllNodesOfType: CobolWriteStatementNode
		do: [ :node | 
			node from
				ifNotNil: [ (self variableForNode: node from)
						ifNotNil: [ :var | 
							(self variableForNode: node recordName)
								ifNotNil: [ :fileVar | 
									currentProgram fileDescriptors
										do: [ :each | (each variables includes: fileVar) ifTrue: [ each variables add: var ] ] ] ] ] ].
	ast
		withAllNodesOfType: CobolExecCicsStatementNode
		do: [ :node | 
			| isRead |
			((isRead := node isRead) or: [ node isWrite ])
				ifTrue: [ (node potentialValuesFor: 'DATASET')
						do: [ :each | 
							currentFile
								addEntity: (GtCICSFileAccess new
										cicsFile: (cicsFiles
												detect: [ :e | e name = each trim ]
												ifNone: [ cicsFiles
														add: (GtCICSFile new
																name: each trim;
																isStub: true;
																mooseModel: model) ]);
										paragraph: (self entityFor: node);
										variable: (self
												variableForNode: (node argumentFor: (isRead ifTrue: [ 'INTO' ] ifFalse: [ 'FROM' ])));
										ridfld: (self variableForNode: (node argumentFor: 'RIDFLD'));
										mooseModel: model;
										sourceAnchor: (self sourceAnchorFor: node)) ] ] ]
]

{ #category : #importing }
GtCobolImporter >> importIDCAMS: input [
	| ast |
	ast := IDCAMSParser parse: input.
	ast steps
		do: [ :each | 
			each name value = 'DEFINE'
				ifTrue: [ each arguments
						do: [ :arg | 
							| keys name file |
							arg name value = 'CLUSTER'
								ifTrue: [ name := arg findNode: 'NAME'.
									keys := arg findNode: 'KEYS'.
									(name notNil and: [ keys notNil ])
										ifTrue: [ file := cicsFiles
													detect: [ :e | e datasetName = name parameters arguments first source ]
													ifNone: [ cicsFiles
															add: (GtCICSFile new
																	name: name parameters arguments first source;
																	datasetName: name parameters arguments first source;
																	isStub: true;
																	mooseModel: model) ].
											file
												keys: (keys parameters arguments
														pairsCollect: [ :a :b | b source asInteger to: b source asInteger + a source asInteger ]) ] ] ] ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> importJCLDD: aNode into: step [
	| dd |
	dd := GtJCLDataDescriptor new
			step: step;
			sourceAnchor: (FAMIXIndexedFileEntityAnchor
					file: currentFile
					startPos: aNode startPosition
					endPos: aNode stopPosition
					model: model);
			declaredSourceLanguage: jclSourceLanguage;
			mooseModel: model.
	currentFile addEntity: dd.
	aNode name
		ifNil: [ dd gtInspectButtonPosition: aNode operation stopPosition ]
		ifNotNil: [ :token | 
			dd name: token source.
			dd gtInspectButtonPosition: token stopPosition ].
	(aNode values at: 1 ifAbsent: [  ])
		ifNotNil: [ :each | 
			(each isKindOf: JCLInlinedValueNode)
				ifTrue: [ dd
						input: each literalValue;
						inputOffset: each startPosition ] ].
	(aNode namedParameterNodeOf: 'DSN')
		ifNotNil: [ :dsnNode | 
			dsnNode literalValue
				ifNotNil: [ :dsn | 
					| found |
					found := false.
					cicsFiles
						do: [ :each | 
							each datasetName = dsn
								ifTrue: [ found := true.
									currentFile
										addEntity: (GtJCLFileReference new
												cicsFile: each;
												jclDataDescriptor: dd;
												sourceAnchor: (FAMIXIndexedFileEntityAnchor
														file: currentFile
														startPos: dsnNode startPosition
														endPos: dsnNode stopPosition
														model: model);
												declaredSourceLanguage: jclSourceLanguage;
												mooseModel: model) ] ].
					found
						ifFalse: [ | cicsFile |
							cicsFile := GtCICSFile new
									name: dsn;
									datasetName: dsn;
									isStub: true;
									mooseModel: model.
							currentFile
								addEntity: (GtJCLFileReference new
										cicsFile: cicsFile;
										jclDataDescriptor: dd;
										sourceAnchor: (FAMIXIndexedFileEntityAnchor
												file: currentFile
												startPos: dsnNode startPosition
												endPos: dsnNode stopPosition
												model: model);
										declaredSourceLanguage: jclSourceLanguage;
										mooseModel: model).
							cicsFiles add: cicsFile ] ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> importJCLExec: aNode into: owner [
	| step |
	step := GtJCLStep new
			sourceAnchor: ((GtCobolSourceFileAnchor
					file: currentFile
					startPos: aNode startPosition
					endPos: (aNode components ifEmpty: [ aNode ] ifNotEmpty: [ :c | c last ])
							stopPosition
					model: model)
					sourceText: (self completeSourceFor: aNode);
					yourself);
			declaredSourceLanguage: jclSourceLanguage;
			mooseModel: model.
	owner steps add: step.
	currentFile addEntity: step.
	aNode name
		ifNil: [ step gtInspectButtonPosition: aNode operation stopPosition ]
		ifNotNil: [ :token | 
			step name: token source.
			step gtInspectButtonPosition: token stopPosition ].
	(aNode namedParameterValueOf: 'PGM')
		ifNotNil: [ :program | step program: (self ensureProgram: program) ].
	(aNode namedParameterValueOf: 'PROC')
		ifNotNil: [ :proc | finishActions add: [ self linkStep: step toProc: proc ] ].
	aNode components
		do: [ :each | each isDD ifTrue: [ self importJCLDD: each into: step ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> importJCLFile: aFileReference [
	| ast |
	currentFile := self ensureFile: aFileReference.
	currentFile declaredSourceLanguage: jclSourceLanguage.
	ast := JCLParser parseFileWithErrors: aFileReference.
	(ast isErrorNode or: [ ast statements anySatisfy: #isErrorNode ])
		ifTrue: [ ^ self ].
	ast buildComponents.
	ast statements
		do: [ :each | 
			each isJOB ifTrue: [ self importJCLJob: each ].
			each isPROC ifTrue: [ self importJCLProc: each ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> importJCLJob: aNode [
	| job |
	job := self ensureJCLJob: aNode name source.
	job declaredSourceLanguage: jclSourceLanguage.
	job
		sourceAnchor: (FAMIXIndexedFileEntityAnchor
				file: currentFile
				startPos: aNode startPosition
				endPos: aNode stopPosition
				model: model).
	job mooseModel: model.
	job gtInspectButtonPosition: aNode name stopPosition.
	currentFile addEntity: job.
	aNode components
		do: [ :each | each isEXEC ifTrue: [ self importJCLExec: each into: job ] ].
	aNode values notEmpty
		ifTrue: [ (aNode positionalParameterValueOf: aNode values size)
				ifNotNil: [ :name | job description: name ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> importJCLProc: aNode [
	| proc |
	proc := GtJCLProc new name: aNode name source.
	proc declaredSourceLanguage: jclSourceLanguage.
	proc
		sourceAnchor: (FAMIXIndexedFileEntityAnchor
				file: currentFile
				startPos: aNode startPosition
				endPos: aNode stopPosition
				model: model).
	proc mooseModel: model.
	proc gtInspectButtonPosition: aNode name stopPosition.
	currentFile addEntity: proc.
	aNode components
		do: [ :each | each isEXEC ifTrue: [ self importJCLExec: each into: proc ] ].
	aNode values notEmpty
		ifTrue: [ (aNode positionalParameterValueOf: aNode values size)
				ifNotNil: [ :name | proc description: name ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importMapCallsIn: ast [
	ast
		withAllNodesOfType: CobolExecCicsStatementNode
		do: [ :each | 
			| isReceive targets |
			((isReceive := each isReceiveMapSet) or: [ each isSendMapSet ])
				ifTrue: [ targets := each potentialValuesFor: 'MAP'.
					targets isEmpty
						ifTrue: [ currentFile
								addEntity: (GtBMSMapExpression new
										isReceive: isReceive;
										program: currentProgram;
										sourceAnchor: (self sourceAnchorFor: each);
										mooseModel: model) ]
						ifFalse: [ targets
								do: [ :map | 
									currentFile
										addEntity: (GtBMSMapExpression new
												isReceive: isReceive;
												program: currentProgram;
												map: (self ensureMap: map);
												sourceAnchor: (self sourceAnchorFor: each);
												propertyNamed: #ast put: each;
												mooseModel: model) ] ] ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importParagraphsIn: ast [
	| initial labels |
	initial := true.
	ast
		withAllNodesOfType: CobolProcedureDivisionNode
		do: [ :node | 
			node sentences notEmpty
				ifTrue: [ | paragraph |
					paragraph := GtCobolParagraph new
							name: ast topParent filename basenameWithoutExtension;
							isInitial: initial;
							container: currentProgram;
							sourceAnchor: (self sourceAnchorFor: node);
							mooseModel: model.
					paragraph gtInspectButtonPosition: node keywords second stopPosition.
					node attributeNamed: #entity put: paragraph.
					currentFile addEntity: paragraph.
					initial := false ] ].
	labels := Dictionary new.
	ast
		withAllNodesOfType: CobolProcedureSectionNode
		do: [ :node | 
			node sentences notEmpty
				ifTrue: [ | paragraph |
					paragraph := GtCobolParagraph new
							name: node header name source;
							isInitial: initial;
							container: currentProgram;
							sourceAnchor: (self sourceAnchorFor: node);
							mooseModel: model.
					paragraph gtInspectButtonPosition: node header name stopPosition.
					labels at: node header name source put: paragraph.
					node attributeNamed: #entity put: paragraph.
					currentFile addEntity: paragraph.
					initial := false ] ].
	ast
		withAllNodesOfType: CobolParagraphNode
		do: [ :node | 
			| paragraph |
			paragraph := GtCobolParagraph new
					name: node name source;
					isInitial: initial;
					container: currentProgram;
					sourceAnchor: (self sourceAnchorFor: node);
					mooseModel: model.
			paragraph gtInspectButtonPosition: node name stopPosition.
			labels at: node name source put: paragraph.
			node attributeNamed: #entity put: paragraph.
			currentFile addEntity: paragraph.
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
					invocation sourceAnchor: (self sourceAnchorFor: goto).
					currentFile addEntity: invocation ] ].
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
					invocation sourceAnchor: (self sourceAnchorFor: name).
					currentFile addEntity: invocation ] ]
				value: perform procedureName;
				value: perform thru ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importReturnsIn: ast [
	| program |
	program := currentProgram.
	ast
		allNodesOfType: CobolExecCicsStatementNode
		do: [ :node | 
			(node is: 'RETURN')
				ifTrue: [ finishActions add: [ self addReturnAssignmentsFor: program from: node ] ] ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importSqlIn: ast [
	ast
		withAllNodesOfType: CobolExecSqlStatementNode
		do: [ :execSqlNode | 
			execSqlNode _source
				ifNotNil: [ :token | 
					| inStream varStream char vars modelTable paragraph execSql |
					paragraph := self paragraphFor: execSqlNode.
					execSql := GtCobolExecSqlStatement new
							source: token source;
							sourceAnchor: (self sourceAnchorFor: execSqlNode);
							paragraph: paragraph;
							mooseModel: model;
							yourself.
					currentFile addEntity: execSql.
					inStream := token source readStream.
					[ inStream atEnd ]
						whileFalse: [ char := inStream next.
							char = $'
								ifTrue: [ inStream upTo: $' ]
								ifFalse: [ char = $:
										ifTrue: [ varStream := WriteStream on: String new.
											[ inStream atEnd not
												and: [ (char := inStream peek) isAlphaNumeric or: [ '-_' includes: char ] ] ]
												whileTrue: [ varStream nextPut: inStream next ].
											varStream position > 0
												ifTrue: [ vars := variables at: varStream contents asUppercase ifAbsent: [ #() ].
													vars size = 1
														ifTrue: [ currentFile
																addEntity: (FAMIXAccess new
																		from: ((self entityFor: execSqlNode)
																				ifNotNil: [ :entity | (entity isKindOf: FAMIXBehaviouralEntity) ifTrue: [ entity ] ]);
																		to: vars first;
																		sourceAnchor: ((GtCobolSourceFileAnchor
																				file: currentFile
																				startPos: inStream position + token startPosition
																						- vars first name size
																				endPos: inStream position + token startPosition - 1
																				model: model)
																				sourceText: (self completeSourceFor: execSqlNode);
																				yourself);
																		mooseModel: model) ] ] ] ] ].
					(self tablesReferencedIn: token source)
						do: [ :tbl | 
							modelTable := self ensureTableNamed: tbl value.
							FAMIXReference new
								from: execSql;
								to: modelTable;
								sourceAnchor: ((GtCobolSourceFileAnchor
										file: currentFile
										startPos: tbl start + execSqlNode _source startPosition - 1
										endPos: tbl stop + execSqlNode _source startPosition - 1
										model: model)
										sourceText: (self completeSourceFor: execSqlNode);
										yourself);
								mooseModel: model ] ] ]
]

{ #category : #'importing-cobol' }
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
	var
		ifNil: [ (idNode parentOfType: CobolStatementNode)
				ifNotNil: [ :statement | 
					((statement isKindOf: CobolGoToStatementNode)
						or: [ statement isKindOf: CobolPerformStatementNode ])
						ifFalse: [ var := self ensureStubVariable: idNode name source ] ].
			var ifNil: [ ^ self ] ].
	idNode attributeNamed: #referenceTo put: var.
	currentFile
		addEntity: (FAMIXAccess new
				from: ((self entityFor: idNode)
						ifNotNil: [ :entity | (entity isKindOf: FAMIXBehaviouralEntity) ifTrue: [ entity ] ]);
				to: var;
				isWrite: idNode isWritten;
				sourceAnchor: ((GtCobolSourceFileAnchor
						file: currentFile
						startPos: idNode name startPosition
						endPos: idNode name stopPosition
						model: model)
						sourceText: (self completeSourceFor: idNode);
						yourself);
				mooseModel: model)
]

{ #category : #'importing-cobol' }
GtCobolImporter >> importXctlCallsIn: ast [
	ast xctlNodes
		do: [ :each | 
			| targets file expr |
			targets := each xctlPrograms.
			expr := GtCobolCicsXctlExpression new
					fromProgram: currentProgram;
					commonAreaVariable: (self variableForNode: (each argumentFor: 'COMMAREA'));
					sourceAnchor: (self sourceAnchorFor: each);
					mooseModel: model.
			targets notEmpty
				ifTrue: [ expr toPrograms: (targets collect: [ :program | self ensureProgram: program ]).
					file := currentFile.
					finishActions
						add: [ self
								addCommonAreaAssignmentFor: targets
								from: each
								in: file ] ].
			currentFile addEntity: expr ]
]

{ #category : #'initialize-release' }
GtCobolImporter >> initialize [
	super initialize.
	folders := Dictionary new.
	files := Dictionary new.
	copyBookDirectories := #().
	model := MooseModel new.
	model sourceLanguage: (GtCobolSourceLanguage new mooseModel: model).
	jclSourceLanguage := GtJCLSourceLanguage new mooseModel: model.
	bmsSourceLanguage := GtBMSSourceLanguage new mooseModel: model.
	csdSourceLanguage := GtCSDSourceLanguage new mooseModel: model.
	programs := Dictionary new.
	variables := Dictionary new.
	maps := Dictionary new.
	mapSets := Dictionary new.
	jobs := Dictionary new.
	cicsFiles := OrderedCollection new.
	finishActions := OrderedCollection new.
	tables := Dictionary new
]

{ #category : #testing }
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

{ #category : #'importing-cobol' }
GtCobolImporter >> linkFileDescriptor: fileDescriptor toJCLDD: assignmentNode [
	fileDescriptor program jclSteps
		do: [ :step | 
			step dataDescriptors
				do: [ :dd | 
					dd name = assignmentNode assignment source
						ifTrue: [ currentFile := fileDescriptor containerFiles first.
							currentFile
								addEntity: (GtCobolAssignFile new
										fileDescriptor: fileDescriptor;
										jclDataDescriptor: dd;
										sourceAnchor: (self sourceAnchorFor: assignmentNode);
										mooseModel: model) ] ] ]
]

{ #category : #'importing-jcl' }
GtCobolImporter >> linkStep: step toProc: aString [
	| procs jclProc |
	procs := (model allWithType: GtJCLProc)
			select: [ :each | each name sameAs: aString ].
	jclProc := procs size > 1
			ifTrue: [ procs
					detect: [ :each | each containerFiles first fileReference basenameWithoutExtension sameAs: aString ]
					ifNone: [ procs first ] ]
			ifFalse: [ procs notEmpty ifTrue: [ procs first ] ].
	step calledProc: jclProc
]

{ #category : #accessing }
GtCobolImporter >> model [
	^ model
]

{ #category : #accessing }
GtCobolImporter >> model: anObject [
	model := anObject
]

{ #category : #'importing-cobol' }
GtCobolImporter >> paragraphFor: aNode [
	^ (self entityFor: aNode)
		ifNotNil: [ :ent | (ent isKindOf: GtCobolParagraph) ifTrue: [ ent ] ]
]

{ #category : #importing }
GtCobolImporter >> sourceAnchorFor: aNode [
	^ (GtCobolSourceFileAnchor
		file: currentFile
		startPos: aNode startPosition
		endPos: aNode stopPosition
		model: model)
		sourceText: (self completeSourceFor: aNode);
		yourself
]

{ #category : #'importing-cobol' }
GtCobolImporter >> tablesReferencedIn: aSqlString [
	| select insert delete update tableNames tableParser tablesParser |
	tableParser := ((#word asPParser | '_' asPParser) plus token
			, ('AS' asPParser trim optional , #word asPParser plus trim) optional)
			==> #first.
	tablesParser := (tableParser , (',' asPParser trim , tableParser) star)
			==> [ :e | {e first} , (e last collect: #last) ].
	select := (('SELECT' asPParser , 'FROM' asPParser negate star flatten
			, 'FROM' asPParser trim , tablesParser
			, 'SELECT' asPParser negate star flatten) ==> #fourth) plus
			==> [ :e | e flatten ].
	delete := ('DELETE' asPParser , 'FROM' asPParser negate star flatten
			, 'FROM' asPParser trim , tablesParser
			, ('SELECT' asPParser negate star , select) optional)
			==> [ :e | e fourth , (e fifth ifNil: [ #() ] ifNotNil: [ :f | f last ]) ].
	insert := ('INSERT' asPParser , 'INTO' asPParser negate star flatten
			, 'INTO' asPParser trim , tablesParser
			, ('SELECT' asPParser negate star , select) optional)
			==> [ :e | e fourth , (e fifth ifNil: [ #() ] ifNotNil: [ :f | f last ]) ].
	update := ('UPDATE' asPParser trim , tablesParser
			, ('SELECT' asPParser negate star , select) optional)
			==> [ :e | e second , (e third ifNil: [ #() ] ifNotNil: [ :f | f last ]) ].
	tableNames := (select | delete | insert) sea ==> #second / update
			parse: aSqlString asUppercase.
	^ tableNames isPetit2Failure ifTrue: [ #() ] ifFalse: [ tableNames ]
]

{ #category : #'importing-cobol' }
GtCobolImporter >> variableForNode: aNode [
	| current |
	aNode ifNil: [ ^ nil ].
	current := aNode.
	[ current isKindOf: CobolInExpressionNode ]
		whileTrue: [ current := current name ].
	^ current attributeNamed: #referenceTo
]
