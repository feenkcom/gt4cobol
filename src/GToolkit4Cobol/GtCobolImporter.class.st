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
		'currentProgram'
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
GtCobolImporter >> importDirectory: aDirectory [
	model rootFolder: aDirectory.
	(CobolParser sourceFilesIn: aDirectory) do: [ :each | self importFile: each ]
]

{ #category : #importing }
GtCobolImporter >> importFile: aFileReference [
	| ast |
	currentFile := self ensureFile: aFileReference.
	ast := CobolParser
			loadSource: aFileReference
			withLibraries: copyBookDirectories.
	currentProgram := self ensureProgram: aFileReference basenameWithoutExtension.
	ast attributeNamed: #entity put: currentProgram.
	currentProgram sourceAnchor: (self sourceAnchorFor: ast).
	self
		importDataIn: ast;
		importParagraphsIn: ast;
		importXctlCallsIn: ast
]

{ #category : #importing }
GtCobolImporter >> importParagraphsIn: ast [
	| index |
	index := 1.
	ast
		withAllNodesOfType: CobolProcedureDivisionNode
		do: [ :node | 
			node sentences notEmpty
				ifTrue: [ node
						attributeNamed: #entity
						put: (GtCobolParagraph new
								name: ast topParent filename basenameWithoutExtension;
								container: currentProgram;
								sourceAnchor: (self sourceAnchorFor: node);
								mooseModel: model) ] ].
	ast
		withAllNodesOfType: CobolParagraphNode
		do: [ :node | 
			node
				attributeNamed: #entity
				put: (GtCobolParagraph new
						name: node name source;
						container: currentProgram;
						sourceAnchor: (self sourceAnchorFor: node);
						mooseModel: model) ]
]

{ #category : #importing }
GtCobolImporter >> importXctlCallsIn: ast [
	currentProgram
		xctlToPrograms: (ast xctlProgramNames collect: [ :each | self ensureProgram: each ])
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
	variables := Dictionary new
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