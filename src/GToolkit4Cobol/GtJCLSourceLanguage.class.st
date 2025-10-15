Class {
	#name : 'GtJCLSourceLanguage',
	#superclass : 'FAMIXSourceLanguage',
	#category : 'GToolkit4Cobol-Model',
	#package : 'GToolkit4Cobol',
	#tag : 'Model'
}

{ #category : 'accessing' }
GtJCLSourceLanguage >> gtParserClass [
	^ JCLParser
]

{ #category : 'accessing' }
GtJCLSourceLanguage >> gtStylerFor: anEntity [
	| rules |
	(anEntity mooseModel isNil or: [ anEntity containerFiles size ~= 1 ])
		ifTrue: [ ^ super gtStyler ].
	rules := {GtSmaCCNodeStylerRule
				nodeClassName: #SmaCCParseNode
				styleBlock: [ :styler :node :text | 
					node parent
						ifNil: [ anEntity containerFiles first entities
								do: [ :each | 
									self addInspectButtonFor: each in: text.
									self addExpanderFor: each in: text ] ] ]}.
	rules do: [ :each | each continueOnMatch: true ].
	^ (GtCompositeSmaCCASTStyler forParser: self gtParserClass)
		stylers: {self gtParserClass gtStyler.
				(GtSmaCCParserStyler forParser: self gtParserClass) stylerRules: rules}
]
