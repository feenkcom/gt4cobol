Class {
	#name : 'JCLParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated' }
JCLParser class >> ambiguousTransitions [
^#(
#[ 0 38 0 157]
	).
]

{ #category : 'generated-accessing' }
JCLParser class >> cacheId [
	^'2025-10-15T13:49:41.150653-05:00'
]

{ #category : 'generated' }
JCLParser class >> definitionComment [
"%ignorecase;

%glr;

%id <statementName> <input> <name>;
%root Program;
%prefix JCL;
%suffix Node;
%hierarchy Value (InlinedValue List Name Number String);
%hierarchy Statement (ProcStatement);
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
default <proc>
	: proc
	;
default <pend>
	: pend
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
	: <name>? \& <name>
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
	;
File 
	: Statement 'statement'+ {{}}
	;
Statement
	: StatementWithoutEOL SwitchToStartOfLine <eol> ['1']
	;
SwitchToStartOfLine
	: [self scope: #startOfLine. nil]
	;
StatementWithoutEOL	# currently just a limited subset of statements supported
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <name> 'operation' Parameters {{Statement}}
	| ProcStatement
	;
ProcStatement
	: ProcHeader Statement 'statement'+ ProcEnd 'statement' {{ProcStatement}}
	;
ProcEnd
	: SwitchToDefault <slashSlash> 'slashes' <pend> 'operation' Parameters {{Statement}}
	;
ProcHeader
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <proc> 'operation' Parameters SwitchToStartOfLine<eol>
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
	| <symbolicName> 'name' List 'values'? {{Name}}
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

{ #category : 'accessing' }
JCLParser class >> fileExtension [
	^ '.jcl'
]

{ #category : 'accessing' }
JCLParser class >> fileExtensions [
	^ #('.jcl' '.prc')
]

{ #category : 'accessing' }
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

{ #category : 'generated' }
JCLParser class >> reduceTable [
^#(
	#(37 0 #reduceActionForSwitchToDefault1: 2590721 true) 
	#(22 1 #reduceActionForFile1: 1013761 false) 
	#(23 1 #reduceActionForStatement__statement__1: 1022977 false) 
	#(25 0 #reduceActionForSwitchToStartOfLine1: 1124353 true) 
	#(26 1 #liftFirstValue: 1183747 false) 
	#(23 2 #reduceActionForStatement__statement__2: 1022978 false) 
	#(24 3 #liftFirstValue: 1054721 true) 
	#(27 3 #reduceActionForProcStatement1: 1396737 false) 
	#(30 0 #reduceActionForParameters4: 1728516 false) 
	#(35 0 #reduceActionForSwitchToStar1: 2471937 true) 
	#(34 1 #reduceActionForValue3: 2161667 false) 
	#(34 1 #reduceActionForValue1: 2161665 false) 
	#(34 1 #reduceActionForValue2: 2161666 false) 
	#(34 1 #reduceActionForValue3: 2161669 false) 
	#(34 1 #reduceActionForValue3: 2161671 false) 
	#(30 1 #reduceActionForParameters3: 1728515 false) 
	#(31 1 #reduceActionForKeywordParameters1: 1847297 false) 
	#(30 1 #reduceActionForParameters1: 1728513 false) 
	#(33 1 #reduceActionForPositionalParameters1: 2060289 false) 
	#(34 1 #liftFirstValue: 2161672 false) 
	#(26 4 #reduceActionForStatementWithoutEOL1: 1183745 false) 
	#(34 2 #reduceActionForValue4: 2161668 false) 
	#(36 2 #reduceActionForList1: 2516993 false) 
	#(34 2 #reduceActionForValue4: 2161670 false) 
	#(26 5 #reduceActionForStatementWithoutEOL2: 1183746 false) 
	#(28 4 #reduceActionForStatementWithoutEOL1: 1490945 false) 
	#(32 3 #reduceActionForKeywordParameter1: 1985537 false) 
	#(36 3 #reduceActionForList2: 2516994 false) 
	#(29 6 #reduceActionForProcHeader1: 1590273 false) 
	#(31 3 #reduceActionForKeywordParameters2: 1847298 false) 
	#(30 3 #reduceActionForParameters2: 1728514 false) 
	#(33 3 #reduceActionForPositionalParameters2: 2060290 false) 
	#(34 4 #reduceActionForValue9: 2161673 false) 
	#(29 7 #reduceActionForProcHeader2: 1590274 false)
	).
]

{ #category : 'generated' }
JCLParser class >> scannerClass [
	^JCLScanner
]

{ #category : 'generated' }
JCLParser class >> startingStateForFile [
	^ 1
]

{ #category : 'generated' }
JCLParser class >> symbolNames [
	^ #('<slashSlash>' '<eol>' '<whitespace>' '<comment>' '<proc>' '<pend>' '<statementName>' '<name>' '<number>' '<string>' '<star>' '<equals>' '<separator>' '<leftParen>' '<rightParen>' '<symbolicName>' '<starName>' '<inputCharacter>' '<endOfFile>' '<endOfInput>' 'B e g i n' 'File' 'Statement ''statement''+' 'Statement' 'SwitchToStartOfLine' 'StatementWithoutEOL' 'ProcStatement' 'ProcEnd' 'ProcHeader' 'Parameters' 'KeywordParameters' 'KeywordParameter' 'PositionalParameters' 'Value' 'SwitchToStar' 'List' 'SwitchToDefault' '<input>' 'E O F' 'error')
]

{ #category : 'generated' }
JCLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JCLFileNode #JCLFileNode #OrderedCollection #JCLStatementNode nil #JCLStatementNode #JCLProcStatementNode #JCLStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JCLKeywordParameterNode #OrderedCollection #JCLValueNode nil #JCLListNode nil #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
JCLParser class >> transitionTable [
^#(
#[1 0 6 0 1 0 9 0 22 0 13 0 23 0 17 0 24 0 21 0 26 0 21 0 27 0 29 0 29 0 33 0 37] 
#[0 0 0 0 39] 
#[1 0 6 0 1 0 37 0 24 0 21 0 26 0 21 0 27 0 29 0 29 0 33 0 37 0 10 0 39] 
#[0 0 14 0 1 0 39] 
#[1 0 18 0 2 0 41 0 25] 
#[0 0 22 0 2] 
#[1 0 6 0 1 0 45 0 23 0 17 0 24 0 21 0 26 0 21 0 27 0 29 0 29 0 33 0 37] 
#[0 0 49 0 1] 
#[0 0 26 0 1 0 39] 
#[0 0 53 0 2] 
#[1 0 6 0 1 0 37 0 24 0 21 0 26 0 21 0 27 0 57 0 28 0 29 0 29 0 61 0 37] 
#[1 0 65 0 5 0 69 0 7 0 73 0 8] 
#[0 0 30 0 1 0 39] 
#[0 0 34 0 2] 
#[0 0 77 0 1] 
#[1 0 38 0 2 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 105 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[1 0 133 0 5 0 137 0 8] 
#[1 0 38 0 2 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 141 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[1 0 65 0 5 0 145 0 6 0 69 0 7 0 73 0 8] 
#[1 0 46 0 2 0 149 0 12 0 46 0 13 0 93 0 14 0 46 0 15 0 153 0 36] 
#[0 0 50 0 2 0 13 0 15] 
#[0 0 54 0 2 0 13 0 15] 
#[1 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 7 0 15 0 97 0 16 0 101 0 17 0 161 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[1 0 58 0 2 0 58 0 13 0 93 0 14 0 58 0 15 0 165 0 36] 
#[0 0 62 0 2 0 13 0 15] 
#[1 0 18 0 2 0 169 0 25] 
#[1 0 66 0 2 0 173 0 13 0 66 0 15] 
#[0 0 70 0 2 0 13 0 15] 
#[1 0 74 0 2 0 177 0 13 0 74 0 15] 
#[0 0 78 0 2 0 13 0 15] 
#[0 0 181 0 11] 
#[0 0 82 0 2 0 13 0 15] 
#[1 0 38 0 2 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 185 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[1 0 38 0 2 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 189 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[0 0 86 0 2] 
#[1 0 38 0 2 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 193 0 30 0 109 0 31 0 113 0 32 0 117 0 33 0 121 0 34 0 125 0 35 0 121 0 36] 
#[1 0 197 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 201 0 34 0 125 0 35 0 201 0 36] 
#[0 0 90 0 2 0 13 0 15] 
#[0 0 94 0 2 0 13 0 15] 
#[0 0 205 0 15] 
#[0 0 98 0 2 0 13 0 15] 
#[0 0 209 0 2] 
#[1 0 213 0 8 0 217 0 32] 
#[1 0 81 0 8 0 85 0 9 0 89 0 10 0 42 0 11 0 93 0 14 0 97 0 16 0 101 0 17 0 221 0 31 0 113 0 32 0 225 0 34 0 125 0 35 0 225 0 36] 
#[1 0 229 0 37 0 6 0 38] 
#[1 0 18 0 2 0 233 0 25] 
#[0 0 102 0 2] 
#[0 0 106 0 2] 
#[1 0 46 0 2 0 46 0 13 0 93 0 14 0 46 0 15 0 153 0 36] 
#[0 0 110 0 2 0 13 0 15] 
#[0 0 114 0 2 0 13 0 15] 
#[0 0 118 0 1] 
#[0 0 149 0 12] 
#[0 0 122 0 2 0 13 0 15] 
#[1 0 126 0 2 0 173 0 13 0 126 0 15] 
#[0 0 130 0 2 0 13 0 15] 
#[0 0 237 0 38] 
#[0 0 241 0 2] 
#[0 0 134 0 2 0 13 0 15] 
#[0 0 138 0 1]
	).
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForFile1: nodes [
	| result |
	result := JCLFileNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameter1: nodes [
	| result |
	result := JCLKeywordParameterNode new.
	result key: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameters1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameters2: nodes [
	| result |
	result := nodes at: 1.
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForList1: nodes [
	| result |
	result := JCLListNode new.
	result left: (nodes at: 1).
	result right: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
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

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForParameters4: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcHeader1: nodes [
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

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcHeader2: nodes [
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

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcStatement1: nodes [
	| result |
	result := JCLProcStatementNode new.
	result slashes: ((nodes at: 1) at: 1).
	result operation: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result values.
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result addObjects: ((nodes at: 1) at: 5) to: result parameters.
	result name: ((nodes at: 1) at: 6).
	result addNodes: (nodes at: 2) to: result statements.
	result addNode: (nodes at: 3) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatementWithoutEOL1: nodes [
	| result |
	result := JCLStatementNode new.
	result slashes: (nodes at: 2).
	result operation: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addObjects: ((nodes at: 4) at: 3) to: result parameters.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatementWithoutEOL2: nodes [
	| result |
	result := JCLStatementNode new.
	result slashes: (nodes at: 2).
	result name: (nodes at: 3).
	result operation: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result values.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result addObjects: ((nodes at: 5) at: 3) to: result parameters.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToStar1: nodes [
	self scope: #star.
	^ nil
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSwitchToStartOfLine1: nodes [
	self scope: #startOfLine.
	^ nil
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForValue1: nodes [
	| result |
	result := JCLNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForValue2: nodes [
	| result |
	result := JCLStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForValue3: nodes [
	| result |
	result := JCLNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForValue4: nodes [
	| result |
	result := JCLNameNode new.
	result name: (nodes at: 1).
	result values: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForValue9: nodes [
	| result |
	result := JCLInlinedValueNode new.
	result star: (nodes at: 2).
	result input: (nodes at: 4).
	^ result
]

{ #category : 'testing' }
JCLParser >> tryAllTokens [
	^ true
]

{ #category : 'testing' }
JCLParser >> useAllTokenIds [
	^ false
]
