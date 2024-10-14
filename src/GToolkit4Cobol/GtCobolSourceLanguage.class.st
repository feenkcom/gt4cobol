Class {
	#name : #GtCobolSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #private }
GtCobolSourceLanguage >> addExpanderFor: association in: text [
	| to |
	to := (association isKindOf: GtBMSMapExpression)
			ifTrue: [ association map ]
			ifFalse: [ association to ].
	((to isKindOf: Collection) and: [ to size = 1 ]) ifTrue: [ to := to anyOne ].
	(to isNil or: [ association sourceAnchor isNil ]) ifTrue: [ ^ self ].
	(text from: association sourceAnchor endPos to: association sourceAnchor endPos)
		attribute: (BrGlamorousTriangleExpanderTextAttribute new
				attributesCreatingBlock: [ BrTextAdornmentDynamicAttribute new
						beAppend;
						stencil: [ | pane view |
							pane := BrVerticalPane new
									height: 300;
									aptitude: BrShadowAptitude
											+ (BrGlamorousWithVerticalResizerAptitude new
													beBottom;
													yourself);
									background: Color white;
									margin: (BlInsets all: 10);
									constraintsDo: [ :c | 
										c textFlow pushLine.
										c horizontal matchParent ].
							view := (to isKindOf: GtBMSMap)
									ifTrue: [ to gtScreenFor: GtPhlowProtoView new ]
									ifFalse: [ (to isKindOf: FAMIXSourcedEntity)
											ifTrue: [ to gtSourceFor: GtPhlowProtoView new ]
											ifFalse: [ (to isKindOf: Collection)
													ifTrue: [ to gtItemsFor: GtPhlowProtoView new ]
													ifFalse: [ to gtRawFor: GtPhlowProtoView new ] ] ].
							pane addChild: view asElement matchParent ] ])
]

{ #category : #accessing }
GtCobolSourceLanguage >> gtParserClass [
	^ CobolParser
]

{ #category : #accessing }
GtCobolSourceLanguage >> gtStylerFor: anEntity [
	| rules |
	(anEntity mooseModel isNil or: [ anEntity containerFiles size ~= 1 ])
		ifTrue: [ ^ super gtStyler ].
	rules := {GtSmaCCNodeStylerRule
				nodeClassName: #CobolFileNode
				styleBlock: [ :styler :node :text | 
					anEntity containerFiles first entities
						do: [ :each | (each isKindOf: FAMIXAssociation) ifTrue: [ self addExpanderFor: each in: text ] ] ]}.
	rules do: [ :each | each continueOnMatch: true ].
	^ (GtCompositeSmaCCASTStyler forParser: CobolParser)
		stylers: {CobolParser cobolStyler: CobolParser.
				(GtSmaCCParserStyler forParser: CobolParser) stylerRules: rules}
]
