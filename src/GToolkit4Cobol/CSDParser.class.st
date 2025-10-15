Class {
	#name : 'CSDParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'GToolkit4Cobol-CSD-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'CSD-Parser'
}

{ #category : 'generated-accessing' }
CSDParser class >> cacheId [
	^'2024-10-08T07:49:19.100583-05:00'
]

{ #category : 'accessing' }
CSDParser class >> csdStyler: aParserClass [
	<smaccStyler: #CSDParser priority: 10>
	| rules |
	rules := {GtSmaCCNodeStylerRule
				nodeClassName: #CSDDefineNode
				styleBlock: [ :styler :node :text | 
					(text
						from: node properties first name startPosition
						to: node properties first name stopPosition)
						bold;
						foreground: Color purple.
					(text
						from: node properties first value startPosition
						to: node properties first value stopPosition)
						foreground: Color blue muchDarker ].
			GtSmaCCKeywordTokensStylerRule
				styleBlock: [ :styler | 
					styler
						bold;
						foreground: Color purple ].
			GtSmaCCNodeStylerRule
				nodeClassName: #CSDNumberNode
				styleBlock: [ :styler | styler foreground: Color blue ].
			GtSmaCCCommentStylerRule
				styleBlock: [ :styler | styler foreground: Color lightGray ].
			GtSmaCCNodeVariableStylerRule
				nodeClassName: #SmaCCErrorNode
				variableNames: #(dismissedTokens errorToken)
				styleBlock: [ :styler | styler foreground: Color red ]}.
	rules do: [ :each | each continueOnMatch: true ].
	^ (GtSmaCCParserStyler forParser: aParserClass) stylerRules: rules
]

{ #category : 'generated' }
CSDParser class >> definitionComment [
"%ignorecase;

%glr;
%root Program;
%prefix CSD;
%suffix Node;
%hierarchy Expression (Value Number);

<define>
	: define
	;
<name>
	: [a-z][a-z0-9]*
	;
default value <lparen>
	: \(
	;
default value <rparen>
	: \)
	;
value <number>
	: \d+ (\. \d*)?
	;
value <value>
	: [^\(\)]+
	;
<whitespace>
	: \s+
	;
File 
	: Define 'definition'* {{}}
	;
Define
	: <define> 'defineToken' Property 'property'+ {{}}
	;
Property
	: <name> 'name' SwitchToValue <lparen> 'leftParen' Value 'value' SwitchToDefault <rparen> 'rightParen' {{}}
	;
SwitchToDefault
	: [self scope: #default. nil]
	;
Value
	: <value> 'token' {{Value}}
	| <number> 'token' {{Number}}
	;
SwitchToValue
	: [self scope: #value. nil]
	;"
]

{ #category : 'accessing' }
CSDParser class >> fileExtension [
	^ '.csd'
]

{ #category : 'generated' }
CSDParser class >> reduceTable [
^#(
	#(10 0 #reduceActionForDefine__definition__1: 319489 false) 
	#(9 1 #reduceActionForFile1: 310273 false) 
	#(10 2 #reduceActionForDefine__definition__2: 319490 false) 
	#(16 0 #reduceActionForSwitchToValue1: 658433 true) 
	#(11 2 #reduceActionForDefine1: 349185 false) 
	#(12 1 #reduceActionForProperty__property__1: 382977 false) 
	#(12 2 #reduceActionForDefine__definition__2: 382978 false) 
	#(15 1 #reduceActionForValue2: 587778 false) 
	#(15 1 #reduceActionForValue1: 587777 false) 
	#(14 0 #reduceActionForSwitchToDefault1: 536577 true) 
	#(13 6 #reduceActionForProperty1: 412673 false)
	).
]

{ #category : 'generated' }
CSDParser class >> scannerClass [
	^CSDScanner
]

{ #category : 'generated' }
CSDParser class >> startingStateForFile [
	^ 1
]

{ #category : 'generated' }
CSDParser class >> symbolNames [
	^ #('<define>' '<name>' '<lparen>' '<rparen>' '<number>' '<value>' '<whitespace>' 'B e g i n' 'File' 'Define ''definition''*' 'Define' 'Property ''property''+' 'Property' 'SwitchToDefault' 'Value' 'SwitchToValue' 'E O F' 'error')
]

{ #category : 'generated' }
CSDParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSDFileNode #CSDFileNode #OrderedCollection #CSDDefineNode #OrderedCollection #CSDPropertyNode nil #CSDExpressionNode nil #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
CSDParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 9 0 9 0 13 0 10 0 6 0 17] 
#[0 0 0 0 17] 
#[1 0 17 0 1 0 21 0 11 0 10 0 17] 
#[1 0 25 0 2 0 29 0 12 0 33 0 13] 
#[0 0 14 0 1 0 17] 
#[1 0 18 0 3 0 37 0 16] 
#[1 0 22 0 1 0 25 0 2 0 41 0 13 0 22 0 17] 
#[0 0 26 0 1 0 2 0 17] 
#[0 0 45 0 3] 
#[0 0 30 0 1 0 2 0 17] 
#[1 0 49 0 5 0 53 0 6 0 57 0 15] 
#[0 0 34 0 4] 
#[0 0 38 0 4] 
#[1 0 42 0 4 0 61 0 14] 
#[0 0 65 0 4] 
#[0 0 46 0 1 0 2 0 17]
	).
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForDefine1: nodes [
	| result |
	result := CSDDefineNode new.
	result defineToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result properties.
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForDefine__definition__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForDefine__definition__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForFile1: nodes [
	| result |
	result := CSDFileNode new.
	result addNodes: (nodes at: 1) to: result definitions.
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForProperty1: nodes [
	| result |
	result := CSDPropertyNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 3).
	result value: (nodes at: 4).
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForProperty__property__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForSwitchToValue1: nodes [
	self scope: #value.
	^ nil
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForValue1: nodes [
	| result |
	result := CSDValueNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
CSDParser >> reduceActionForValue2: nodes [
	| result |
	result := CSDNumberNode new.
	result token: (nodes at: 1).
	^ result
]
