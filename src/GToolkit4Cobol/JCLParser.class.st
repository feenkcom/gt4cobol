Class {
	#name : #JCLParser,
	#superclass : #SmaCCGLRParser,
	#category : #'GToolkit4Cobol-JCL-Parser'
}

{ #category : #generated }
JCLParser class >> ambiguousTransitions [
^#(
#[ 0 30 0 121]
	).
]

{ #category : #'generated-accessing' }
JCLParser class >> cacheId [
	^'2024-10-09T12:43:41.925357-05:00'
]

{ #category : #generated }
JCLParser class >> definitionComment [
"%ignorecase;

%glr;


%id <statementName> <input> <name>;
%root Program;
%prefix JCL;
%suffix Node;
%hierarchy Value (InlinedValue List Name Number String);
startOfLine <slashSlash>
	: \/\/
	;
default <eol>
	: \r?\n | \r
	;
default <whitespace>
	: [\ \t]+
	;
startOfLine <comment>
	: \/\/\* [^\r\n]* <eol>?
	;
<id>
	: [a-z\#\$\@] [a-z\#\$\@0-9\.]*
	;
default <statementName>
	: <id>
	;
default <name>
	: <id> | ([a-z\#\$\@0-9\.]+)
	;
default <number>
	: [\+\-]? \d+ (\. \d*)?
	;
default <string>
	: (\' [^\']* \')+
	;
default <star>
	: \*
	;
default <equals>
	: \=
	;
default <separator>
	: \, ([\ ]* <eol> \/\/ [\ ]+)?
	;
default <leftParen>
	: \(
	;
default <rightParen>
	: \)
	;
default <symbolicName>
	: \& <name>
	;
default <starName>
	: \* (\. <name>)+
	;
star <inputCharacter>
	: .
	;
startOfLine <endOfFile>
	: \/\/ [\ ]* <eol> .*
	;
startOfLine <endOfInput>
	: \/ \* [\ ]* <eol>?
	;File 
	: Statement 'statement'+ {{}}
	;
Statement
	: StatementWithoutEOL SwitchToStartOfLine <eol> {{}}
	;
SwitchToStartOfLine
	: [self scope: #startOfLine. nil]
	;
StatementWithoutEOL	# currently just a limited subset of statements supported
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <name> 'operation' Parameters
	;
Parameters
	: PositionalParameters
	| PositionalParameters <separator> KeywordParameters
	| KeywordParameters
	|
	;
KeywordParameters
	: KeywordParameter 'parameter'
	| KeywordParameters 'parameter' <separator> 'comma' KeywordParameter 'parameter'
	;
KeywordParameter
	: <name> 'key' <equals> 'equals' Value 'value' {{}}
	;
PositionalParameters
	: Value 'value'
	| PositionalParameters <separator> 'comma' Value 'value'
	;
Value
	: <number> 'value' {{Number}}
	| <string> 'value' {{String}}
	| <name> 'name' {{Name}}
	| <name> 'name' List 'values' {{Name}}
	| <symbolicName> 'name' {{Name}}
	| <starName> 'name' {{Name}}
	| List
	| SwitchToStar <star> 'star' SwitchToDefault <input> 'input' {{InlinedValue}}
	;
SwitchToStar
	: [self scope: #star. nil]
	;
List
	: <leftParen> 'left' Parameters? <rightParen> 'right' {{List}}
	;
SwitchToDefault
	: [self scope: #default. nil]
	;"
]

{ #category : #accessing }
JCLParser class >> fileExtension [
	^ '.jcl'
]

{ #category : #accessing }
JCLParser class >> jclStyler: aParserClass [
	<smaccStyler: #JCLParser priority: 10>
	| rules variables |
	variables := Set new.
	rules := {GtSmaCCNodeVariableStylerRule
				nodeClassName: #JCLStatementNode
				variableNames: #(name)
				styleBlock: [ :styler | styler foreground: Color blue muchDarker ].
			GtSmaCCNodeVariableStylerRule
				nodeClassName: #JCLStatementNode
				variableNames: #(operation)
				styleBlock: [ :styler | styler bold ].
			GtSmaCCNodeVariableStylerRule
				nodeClassName: #JCLKeywordParameterNode
				variableNames: #(key)
				styleBlock: [ :styler | styler bold ].
			GtSmaCCNodeStylerRule
				nodeClassName: #JCLValueNode
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

{ #category : #generated }
JCLParser class >> reduceTable [
^#(
	#(32 0 #reduceActionForSwitchToDefault1: 2110465 true) 
	#(20 1 #reduceActionForFile1: 913409 false) 
	#(21 1 #reduceActionForStatement__statement__1: 922625 false) 
	#(23 0 #reduceActionForSwitchToStartOfLine1: 1022977 true) 
	#(21 2 #reduceActionForStatement__statement__2: 922626 false) 
	#(22 3 #reduceActionForStatement1: 954369 false) 
	#(25 0 #reduceActionForParameters4: 1263620 false) 
	#(30 0 #reduceActionForSwitchToStar1: 1991681 true) 
	#(29 1 #reduceActionForValue3: 1696771 false) 
	#(29 1 #reduceActionForValue1: 1696769 false) 
	#(29 1 #reduceActionForValue2: 1696770 false) 
	#(29 1 #reduceActionForValue3: 1696773 false) 
	#(29 1 #reduceActionForValue3: 1696774 false) 
	#(24 4 #reduceActionForStatementWithoutEOL1: 1082369 false) 
	#(25 1 #reduceActionForParameters3: 1263619 false) 
	#(26 1 #reduceActionForKeywordParameters1: 1382401 false) 
	#(25 1 #reduceActionForParameters1: 1263617 false) 
	#(28 1 #reduceActionForPositionalParameters1: 1595393 false) 
	#(29 1 #liftFirstValue: 1696775 false) 
	#(24 5 #reduceActionForStatementWithoutEOL2: 1082370 false) 
	#(29 2 #reduceActionForValue4: 1696772 false) 
	#(31 2 #reduceActionForList1: 2036737 false) 
	#(27 3 #reduceActionForKeywordParameter1: 1520641 false) 
	#(31 3 #reduceActionForList2: 2036738 false) 
	#(26 3 #reduceActionForKeywordParameters2: 1382402 false) 
	#(25 3 #reduceActionForParameters2: 1263618 false) 
	#(28 3 #reduceActionForPositionalParameters2: 1595394 false) 
	#(29 4 #reduceActionForValue8: 1696776 false)
	).
]

{ #category : #generated }
JCLParser class >> scannerClass [
	^JCLScanner
]

{ #category : #generated }
JCLParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
JCLParser class >> symbolNames [
	^ #('<slashSlash>' '<eol>' '<whitespace>' '<comment>' '<statementName>' '<name>' '<number>' '<string>' '<star>' '<equals>' '<separator>' '<leftParen>' '<rightParen>' '<symbolicName>' '<starName>' '<inputCharacter>' '<endOfFile>' '<endOfInput>' 'B e g i n' 'File' 'Statement ''statement''+' 'Statement' 'SwitchToStartOfLine' 'StatementWithoutEOL' 'Parameters' 'KeywordParameters' 'KeywordParameter' 'PositionalParameters' 'Value' 'SwitchToStar' 'List' 'SwitchToDefault' '<input>' 'E O F' 'error')
]

{ #category : #generated }
JCLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JCLFileNode #JCLFileNode #OrderedCollection #JCLStatementNode nil #OrderedCollection #OrderedCollection #OrderedCollection #JCLKeywordParameterNode #OrderedCollection #JCLValueNode nil #JCLListNode nil #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JCLParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 9 0 20 0 13 0 21 0 17 0 22 0 21 0 24 0 25 0 32] 
#[0 0 0 0 34] 
#[1 0 6 0 1 0 29 0 22 0 21 0 24 0 25 0 32 0 10 0 34] 
#[0 0 14 0 1 0 34] 
#[1 0 18 0 2 0 33 0 23] 
#[0 0 37 0 1] 
#[0 0 22 0 1 0 34] 
#[0 0 41 0 2] 
#[1 0 45 0 5 0 49 0 6] 
#[0 0 26 0 1 0 34] 
#[0 0 53 0 6] 
#[1 0 30 0 2 0 57 0 6 0 61 0 7 0 65 0 8 0 34 0 9 0 69 0 12 0 73 0 14 0 77 0 15 0 81 0 25 0 85 0 26 0 89 0 27 0 93 0 28 0 97 0 29 0 101 0 30 0 97 0 31] 
#[1 0 30 0 2 0 57 0 6 0 61 0 7 0 65 0 8 0 34 0 9 0 69 0 12 0 73 0 14 0 77 0 15 0 109 0 25 0 85 0 26 0 89 0 27 0 93 0 28 0 97 0 29 0 101 0 30 0 97 0 31] 
#[1 0 38 0 2 0 113 0 10 0 38 0 11 0 69 0 12 0 38 0 13 0 117 0 31] 
#[0 0 42 0 2 0 11 0 13] 
#[0 0 46 0 2 0 11 0 13] 
#[1 0 57 0 6 0 61 0 7 0 65 0 8 0 34 0 9 0 69 0 12 0 7 0 13 0 73 0 14 0 77 0 15 0 125 0 25 0 85 0 26 0 89 0 27 0 93 0 28 0 97 0 29 0 101 0 30 0 97 0 31] 
#[0 0 50 0 2 0 11 0 13] 
#[0 0 54 0 2 0 11 0 13] 
#[0 0 58 0 2] 
#[1 0 62 0 2 0 129 0 11 0 62 0 13] 
#[0 0 66 0 2 0 11 0 13] 
#[1 0 70 0 2 0 133 0 11 0 70 0 13] 
#[0 0 74 0 2 0 11 0 13] 
#[0 0 137 0 9] 
#[0 0 78 0 2 0 11 0 13] 
#[0 0 82 0 2] 
#[1 0 141 0 6 0 61 0 7 0 65 0 8 0 34 0 9 0 69 0 12 0 73 0 14 0 77 0 15 0 145 0 29 0 101 0 30 0 145 0 31] 
#[0 0 86 0 2 0 11 0 13] 
#[0 0 90 0 2 0 11 0 13] 
#[0 0 149 0 13] 
#[1 0 153 0 6 0 157 0 27] 
#[1 0 57 0 6 0 61 0 7 0 65 0 8 0 34 0 9 0 69 0 12 0 73 0 14 0 77 0 15 0 161 0 26 0 89 0 27 0 165 0 29 0 101 0 30 0 165 0 31] 
#[1 0 169 0 32 0 6 0 33] 
#[1 0 38 0 2 0 38 0 11 0 69 0 12 0 38 0 13 0 117 0 31] 
#[0 0 94 0 2 0 11 0 13] 
#[0 0 98 0 2 0 11 0 13] 
#[0 0 113 0 10] 
#[0 0 102 0 2 0 11 0 13] 
#[1 0 106 0 2 0 129 0 11 0 106 0 13] 
#[0 0 110 0 2 0 11 0 13] 
#[0 0 173 0 33] 
#[0 0 114 0 2 0 11 0 13]
	).
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForFile1: nodes [
	| result |
	result := JCLFileNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameter1: nodes [
	| result |
	result := JCLKeywordParameterNode new.
	result key: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameters1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameters2: nodes [
	| result |
	result := nodes at: 1.
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForList1: nodes [
	| result |
	result := JCLListNode new.
	result left: (nodes at: 1).
	result right: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForList2: nodes [
	| result |
	result := JCLListNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addObjects: ((nodes at: 2) at: 3) to: result parameters.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForParameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForParameters2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForParameters3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 3).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForParameters4: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForStatement1: nodes [
	| result |
	result := JCLStatementNode new.
	result slashes: ((nodes at: 1) at: 1).
	result operation: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result values.
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result addObjects: ((nodes at: 1) at: 5) to: result parameters.
	result name: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForStatementWithoutEOL1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForStatementWithoutEOL2: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	self addAll: ((nodes at: 5) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 5) at: 3) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToStar1: nodes [
	self scope: #star.
	^ nil
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToStartOfLine1: nodes [
	self scope: #startOfLine.
	^ nil
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForValue1: nodes [
	| result |
	result := JCLNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForValue2: nodes [
	| result |
	result := JCLStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForValue3: nodes [
	| result |
	result := JCLNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForValue4: nodes [
	| result |
	result := JCLNameNode new.
	result name: (nodes at: 1).
	result values: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JCLParser >> reduceActionForValue8: nodes [
	| result |
	result := JCLInlinedValueNode new.
	result star: (nodes at: 2).
	result input: (nodes at: 4).
	^ result
]

{ #category : #testing }
JCLParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
JCLParser >> useAllTokenIds [
	^ false
]
