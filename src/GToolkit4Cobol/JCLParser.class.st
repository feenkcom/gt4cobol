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
#[ 0 6 0 10] 
#[ 0 6 0 50] 
#[ 0 62 0 66] 
#[ 0 74 0 245] 
#[ 0 62 0 66 0 253] 
#[ 0 158 1 97]
	).
]

{ #category : 'generated-accessing' }
JCLParser class >> cacheId [
	^'2025-12-08T08:26:55.664314-06:00'
]

{ #category : 'generated' }
JCLParser class >> definitionComment [
"%ignorecase;

%glr;

%id <statementName> <input> <name> <eol>;
%root Program;
%prefix JCL;
%suffix Node;
%hierarchy Value (InlinedValue List Name Number String);
%hierarchy Statement (ProcStatement IfStatement);
startOfLine startOfLineAfterSeparator <slashSlash>
	: \/\/
	;
startOfLineAfterSeparator <slashSlashSpace>
	: \/\/\ 
	;
default <eol>
	: (\r?\n | \r) ([\ ]* (\r?\n | \r))*
	;
default <whitespace>
	: [\ \t]+
	;
startOfLine startOfLineAfterSeparator <comment>
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
default <if>
	: if
	;
default <then>
	: then
	;
default <else>
	: else
	;
default <endif>
	: endif
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
default <operator>
	: \< [\=\>]?
	| \> \=?
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
	: <name>? \&+ <name>
	;
default <starName>
	: \* (\. <name>)+
	;
star <inputCharacter>
	: .
	;
startOfLine startOfLineAfterSeparator <endOfFile>
	: \/\/ [\ ]* <eol> .*
	;
startOfLine startOfLineAfterSeparator <endOfInput>
	: \/ \* [\ ]* <eol>?
	;
File 
	: Statement 'statement'+ {{}}
	| Statement 'statement'* ProcStatementWithoutPend 'statement' {{}}
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
	| IfStatement
	;
IfStatement
	: IfHeader Statement 'statement'+ (IfElse Statement 'statement')? IfEnd 'statement' {{IfStatement}}
	;
IfElse
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <else> 'operation' {{Statement}}
	;
IfEnd
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <endif> 'operation' {{Statement}}
	;
IfHeader
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <if> 'operation' IfExpression <then> SwitchToStartOfLine<eol>
	;
IfExpression
	: <leftParen> 'leftParen' Value 'left' Operator 'operator' Value 'right' <rightParen> 'rightParen'
	| Value 'left' Operator 'operator' Value 'right'
	;
Operator
	: <operator> 
	| <equals>
	;
ProcStatement
	: ProcStatementWithoutPend ProcEnd 'statement' {{ProcStatement}}
	;
ProcStatementWithoutPend
	: ProcHeader Statement 'statement'+ {{ProcStatement}}
	;
ProcEnd
	: SwitchToDefault <slashSlash> 'slashes' <pend> 'operation' Parameters {{Statement}}
	;
ProcHeader
	: SwitchToDefault <slashSlash> 'slashes' <statementName> 'name'? <proc> 'operation' Parameters SwitchToStartOfLine<eol>
	;
Parameters
	: PositionalParameters
	| PositionalParameters Separator KeywordParameters
	| KeywordParameters
	|
	;
Separator
	: <separator> 'comma' (SwitchToStartOfLineAfterSeparator <eol> SwitchToDefault <slashSlashSpace> 'continuation')?
	;
SwitchToStartOfLineAfterSeparator
	: [self scope: #startOfLineAfterSeparator. nil]
	;
KeywordParameters
	: KeywordParameter 'parameter'
	| KeywordParameters 'parameter' Separator KeywordParameter 'parameter'
	;
KeywordParameter
	: <name> 'key' <equals> 'equals' Value 'value'? {{}}
	| <name> 'key' <equals> 'equals' KeywordParameter 'value'? {{}}
	;
PositionalParameters
	: Value 'value'
	| PositionalParameters Separator+ Value 'value'
	|
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
	#(54 0 #reduceActionForSwitchToDefault1: 4075521 true) 
	#(30 0 #reduceActionForStatement__statement__1: 1415169 false) 
	#(28 1 #reduceActionForFile1: 1374209 false) 
	#(29 1 #reduceActionForStatement__statement__1_: 1383425 false) 
	#(32 0 #reduceActionForSwitchToStartOfLine1: 1554433 true) 
	#(33 1 #liftFirstValue: 1613828 false) 
	#(33 1 #liftFirstValue: 1613827 false) 
	#(29 2 #reduceActionForStatement__statement__2: 1383426 false) 
	#(30 2 #reduceActionForStatement__statement__2: 1415170 false) 
	#(28 2 #reduceActionForFile2: 1374210 false) 
	#(40 2 #reduceActionForProcStatement1: 2537473 false) 
	#(41 2 #reduceActionForProcStatementWithoutPend1: 2622465 false) 
	#(31 3 #liftFirstValue: 1484801 true) 
	#(34 3 #reduceActionForIfStatement1: 1842177 false) 
	#(44 0 #reduceActionForParameters4: 2945028 false) 
	#(49 0 #reduceActionForPositionalParameters3: 3551235 false) 
	#(52 0 #reduceActionForSwitchToStar1: 3956737 true) 
	#(51 1 #reduceActionForValue3: 3646467 false) 
	#(51 1 #reduceActionForValue1: 3646465 false) 
	#(51 1 #reduceActionForValue2: 3646466 false) 
	#(51 1 #reduceActionForValue3: 3646469 false) 
	#(51 1 #reduceActionForValue3: 3646471 false) 
	#(44 1 #reduceActionForParameters3: 2945027 false) 
	#(47 1 #reduceActionForKeywordParameters1: 3280897 false) 
	#(44 1 #reduceActionForParameters1: 2945025 false) 
	#(49 1 #reduceActionForPositionalParameters1: 3551233 false) 
	#(51 1 #liftFirstValue: 3646472 false) 
	#(33 4 #reduceActionForStatementWithoutEOL1: 1613825 false) 
	#(34 5 #reduceActionForIfStatement2: 1842178 false) 
	#(35 3 #reduceActionForIfElse1: 1960961 false) 
	#(36 3 #reduceActionForIfElse1: 2072577 false) 
	#(42 4 #reduceActionForStatementWithoutEOL1: 2707457 false) 
	#(48 2 #reduceActionForKeywordParameter1: 3408897 false) 
	#(51 2 #reduceActionForValue4: 3646468 false) 
	#(53 2 #reduceActionForList1: 4001793 false) 
	#(51 2 #reduceActionForValue4: 3646470 false) 
	#(46 0 #reduceActionForSwitchToStartOfLineAfterSeparator1: 3192833 true) 
	#(45 1 #reduceActionForSeparator1: 3061761 false) 
	#(50 1 #reduceActionForSeparator_1: 3614721 false) 
	#(39 1 #liftFirstValue: 2497538 false) 
	#(39 1 #liftFirstValue: 2497537 false) 
	#(33 5 #reduceActionForStatementWithoutEOL2: 1613826 false) 
	#(35 4 #reduceActionForIfElse2: 1960962 false) 
	#(36 4 #reduceActionForIfElse2: 2072578 false) 
	#(48 3 #reduceActionForKeywordParameter4: 3408900 false) 
	#(48 3 #reduceActionForKeywordParameter4: 3408898 false) 
	#(53 3 #reduceActionForList2: 4001794 false) 
	#(43 6 #reduceActionForProcHeader1: 2806785 false) 
	#(47 3 #reduceActionForKeywordParameters2: 3280898 false) 
	#(44 3 #reduceActionForParameters2: 2945026 false) 
	#(50 2 #reduceActionForSeparator_2: 3614722 false) 
	#(49 3 #reduceActionForPositionalParameters2: 3551234 false) 
	#(38 3 #reduceActionForIfExpression2: 2327554 false) 
	#(51 4 #reduceActionForValue9: 3646473 false) 
	#(37 7 #reduceActionForIfHeader1: 2184193 false) 
	#(43 7 #reduceActionForProcHeader2: 2806786 false) 
	#(38 5 #reduceActionForIfExpression1: 2327553 false) 
	#(37 8 #reduceActionForIfHeader2: 2184194 false) 
	#(45 5 #reduceActionForSeparator2: 3061762 false)
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
	^ #('<slashSlash>' '<slashSlashSpace>' '<eol>' '<whitespace>' '<comment>' '<proc>' '<pend>' '<if>' '<then>' '<else>' '<endif>' '<statementName>' '<name>' '<number>' '<string>' '<star>' '<equals>' '<operator>' '<separator>' '<leftParen>' '<rightParen>' '<symbolicName>' '<starName>' '<inputCharacter>' '<endOfFile>' '<endOfInput>' 'B e g i n' 'File' 'Statement ''statement''+' 'Statement ''statement''*' 'Statement' 'SwitchToStartOfLine' 'StatementWithoutEOL' 'IfStatement' 'IfElse' 'IfEnd' 'IfHeader' 'IfExpression' 'Operator' 'ProcStatement' 'ProcStatementWithoutPend' 'ProcEnd' 'ProcHeader' 'Parameters' 'Separator' 'SwitchToStartOfLineAfterSeparator' 'KeywordParameters' 'KeywordParameter' 'PositionalParameters' 'Separator+' 'Value' 'SwitchToStar' 'List' 'SwitchToDefault' '<input>' 'E O F' 'error')
]

{ #category : 'generated' }
JCLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JCLFileNode #JCLFileNode #OrderedCollection #OrderedCollection #JCLStatementNode nil #JCLStatementNode #JCLIfStatementNode #JCLStatementNode #JCLStatementNode #OrderedCollection #OrderedCollection #SmaCCToken #JCLProcStatementNode #JCLProcStatementNode #JCLStatementNode #OrderedCollection #OrderedCollection #OrderedCollection nil #OrderedCollection #JCLKeywordParameterNode #OrderedCollection #OrderedCollection #JCLValueNode nil #JCLListNode nil #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
JCLParser class >> transitionTable [
^#(
#[1 0 7 0 1 0 9 0 28 0 13 0 29 0 17 0 30 0 21 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54] 
#[0 0 0 0 56] 
#[1 0 6 0 1 0 53 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54 0 14 0 56] 
#[1 0 6 0 1 0 57 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 61 0 41 0 45 0 43 0 49 0 54] 
#[0 0 18 0 1 0 56] 
#[1 0 22 0 3 0 65 0 32] 
#[0 0 26 0 3] 
#[1 0 6 0 1 0 69 0 29 0 21 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54] 
#[0 0 30 0 3] 
#[1 0 6 0 1 0 73 0 42 0 77 0 54] 
#[1 0 6 0 1 0 81 0 29 0 21 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54] 
#[0 0 85 0 1] 
#[0 0 34 0 1 0 56] 
#[0 0 38 0 1] 
#[1 0 6 0 1 0 73 0 42 0 77 0 54 0 42 0 56] 
#[0 0 89 0 3] 
#[1 0 6 0 1 0 53 0 31 0 25 0 33 0 25 0 34 0 93 0 35 0 97 0 36 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 101 0 54] 
#[0 0 46 0 3] 
#[0 0 105 0 1] 
#[1 0 11 0 1 0 53 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54 0 50 0 56] 
#[1 0 109 0 6 0 113 0 8 0 117 0 12 0 121 0 13] 
#[0 0 54 0 1 0 56] 
#[1 0 6 0 1 0 125 0 31 0 25 0 33 0 25 0 34 0 33 0 37 0 25 0 40 0 41 0 41 0 45 0 43 0 49 0 54] 
#[0 0 58 0 3] 
#[0 0 129 0 1] 
#[0 0 133 0 7] 
#[1 0 15 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 153 0 22 0 157 0 23 0 161 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[1 0 189 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 193 0 20 0 153 0 22 0 157 0 23 0 197 0 38 0 201 0 51 0 181 0 52 0 201 0 53] 
#[1 0 205 0 6 0 209 0 8 0 213 0 13] 
#[1 0 15 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 153 0 22 0 157 0 23 0 217 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[1 0 6 0 1 0 221 0 36 0 225 0 54] 
#[1 0 109 0 6 0 113 0 8 0 229 0 10 0 233 0 11 0 237 0 12 0 121 0 13] 
#[1 0 15 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 153 0 22 0 157 0 23 0 241 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[1 0 74 0 3 0 19 0 17 0 74 0 18 0 74 0 19 0 149 0 20 0 74 0 21 0 249 0 53] 
#[0 0 78 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 0 82 0 3 0 9 0 17 0 18 0 19 0 21] 
#[1 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 23 0 21 0 153 0 22 0 157 0 23 1 1 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[1 0 86 0 3 0 86 0 9 0 86 0 17 0 86 0 18 0 86 0 19 0 149 0 20 0 86 0 21 1 5 0 53] 
#[0 0 90 0 3 0 9 0 17 0 18 0 19 0 21] 
#[1 0 22 0 3 1 9 0 32] 
#[1 0 94 0 3 1 13 0 19 0 94 0 21 1 17 0 45] 
#[0 0 98 0 3 0 19 0 21] 
#[1 0 102 0 3 1 13 0 19 0 102 0 21 1 21 0 45 1 25 0 50] 
#[0 0 106 0 3 0 19 0 21] 
#[0 1 29 0 16] 
#[0 0 110 0 3 0 9 0 17 0 18 0 19 0 21] 
#[1 0 74 0 3 0 74 0 9 0 74 0 17 0 74 0 18 0 74 0 19 0 149 0 20 0 74 0 21 0 249 0 53] 
#[1 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 23 0 21 0 153 0 22 0 157 0 23 1 1 0 44 0 165 0 47 0 169 0 48 0 173 0 49 1 33 0 51 0 181 0 52 1 33 0 53] 
#[0 1 37 0 9] 
#[0 1 49 0 17 0 18 0 39] 
#[1 0 15 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 153 0 22 0 157 0 23 1 53 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[1 0 189 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 193 0 20 0 153 0 22 0 157 0 23 1 57 0 38 0 201 0 51 0 181 0 52 0 201 0 53] 
#[1 0 15 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 66 0 19 0 149 0 20 0 153 0 22 0 157 0 23 1 61 0 44 0 165 0 47 0 169 0 48 0 173 0 49 0 177 0 51 0 181 0 52 0 177 0 53] 
#[0 0 114 0 3] 
#[0 0 118 0 3] 
#[0 1 65 0 1] 
#[0 0 122 0 1] 
#[0 0 126 0 3] 
#[1 0 205 0 6 0 209 0 8 1 69 0 10 1 73 0 11 0 213 0 13] 
#[0 0 130 0 3] 
#[1 0 134 0 3 0 137 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 134 0 19 0 149 0 20 0 134 0 21 0 153 0 22 0 157 0 23 1 77 0 48 1 81 0 51 0 181 0 52 1 81 0 53] 
#[0 0 138 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 0 142 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 1 85 0 21] 
#[0 0 146 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 1 89 0 3] 
#[1 0 150 0 3 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 19 0 154 0 20 0 154 0 22 0 154 0 23 1 93 0 46] 
#[1 1 97 0 13 1 101 0 48] 
#[1 0 27 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 19 0 158 0 20 0 158 0 22 0 158 0 23 1 105 0 47 0 169 0 48] 
#[1 0 189 0 13 0 141 0 14 0 145 0 15 0 70 0 16 1 13 0 19 0 149 0 20 0 153 0 22 0 157 0 23 1 109 0 45 1 113 0 51 0 181 0 52 1 113 0 53] 
#[1 1 117 0 54 0 6 0 55] 
#[1 1 121 0 17 1 121 0 18 0 106 0 19 0 106 0 21 1 121 0 39] 
#[1 0 22 0 3 1 125 0 32] 
#[0 0 162 0 13 0 14 0 15 0 16 0 20 0 22 0 23] 
#[0 0 166 0 13 0 14 0 15 0 16 0 20 0 22 0 23] 
#[1 0 189 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 149 0 20 0 153 0 22 0 157 0 23 1 129 0 51 0 181 0 52 1 129 0 53] 
#[1 0 22 0 3 1 133 0 32] 
#[0 1 137 0 9] 
#[0 0 170 0 3] 
#[1 0 233 0 11 1 141 0 12] 
#[0 0 174 0 1] 
#[0 0 178 0 3] 
#[0 0 182 0 3 0 19 0 21] 
#[0 0 186 0 3 0 19 0 21] 
#[0 0 190 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 0 194 0 1] 
#[0 1 145 0 3] 
#[0 0 245 0 17] 
#[0 0 198 0 3 0 19 0 21] 
#[1 0 202 0 3 1 13 0 19 0 202 0 21 1 17 0 45] 
#[0 0 206 0 13 0 14 0 15 0 16 0 19 0 20 0 22 0 23] 
#[0 0 210 0 3 0 19 0 21] 
#[0 1 149 0 55] 
#[1 0 189 0 13 0 141 0 14 0 145 0 15 0 70 0 16 0 149 0 20 0 153 0 22 0 157 0 23 1 153 0 51 0 181 0 52 1 153 0 53] 
#[0 1 157 0 3] 
#[0 0 214 0 9] 
#[0 1 161 0 3] 
#[1 0 22 0 3 1 165 0 32] 
#[0 1 73 0 11] 
#[1 0 6 0 2 1 169 0 54] 
#[0 0 218 0 3 0 9 0 17 0 18 0 19 0 21] 
#[0 1 173 0 21] 
#[0 0 222 0 1] 
#[0 0 226 0 1] 
#[0 1 177 0 3] 
#[0 1 181 0 2] 
#[0 0 230 0 9] 
#[0 0 234 0 1] 
#[0 0 238 0 13 0 14 0 15 0 16 0 19 0 20 0 22 0 23]
	).
]

{ #category : 'as yet unclassified' }
JCLParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	(actions isEmpty and: [ currentToken ids includes: scanner emptySymbolTokenId ])
		ifTrue: [ self addActionsFor: scanner eolId to: actions.
			actions notEmpty
				ifTrue: [ currentToken := SmaCCToken
							value: ''
							start: self position
							ids: {scanner eolId} ]
				ifFalse: [ self addActionsFor: scanner inputId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: self position
									ids: {scanner inputId} ] ] ].
	^ actions
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForFile1: nodes [
	| result |
	result := JCLFileNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForFile2: nodes [
	| result |
	result := JCLFileNode new.
	result addNodes: (nodes at: 1) to: result statements.
	result addNode: (nodes at: 2) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfElse1: nodes [
	| result |
	result := JCLStatementNode new.
	result slashes: (nodes at: 2).
	result operation: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfElse2: nodes [
	| result |
	result := JCLStatementNode new.
	result slashes: (nodes at: 2).
	result name: (nodes at: 3).
	result operation: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfExpression1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfExpression2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfHeader1: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: ((nodes at: 4) at: 1).
	result at: 4 put: ((nodes at: 4) at: 2).
	result at: 5 put: ((nodes at: 4) at: 3).
	result at: 6 put: ((nodes at: 4) at: 4).
	result at: 7 put: ((nodes at: 4) at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfHeader2: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (nodes at: 2).
	result at: 8 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: ((nodes at: 5) at: 1).
	result at: 4 put: ((nodes at: 5) at: 2).
	result at: 5 put: ((nodes at: 5) at: 3).
	result at: 6 put: ((nodes at: 5) at: 4).
	result at: 7 put: ((nodes at: 5) at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfStatement1: nodes [
	| result |
	result := JCLIfStatementNode new.
	result slashes: ((nodes at: 1) at: 1).
	result operation: ((nodes at: 1) at: 2).
	result leftParen: ((nodes at: 1) at: 3).
	result left: ((nodes at: 1) at: 4).
	result operator: ((nodes at: 1) at: 5).
	result right: ((nodes at: 1) at: 6).
	result rightParen: ((nodes at: 1) at: 7).
	result name: ((nodes at: 1) at: 8).
	result addNodes: (nodes at: 2) to: result statements.
	result addNode: (nodes at: 3) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForIfStatement2: nodes [
	| result |
	result := JCLIfStatementNode new.
	result slashes: ((nodes at: 1) at: 1).
	result operation: ((nodes at: 1) at: 2).
	result leftParen: ((nodes at: 1) at: 3).
	result left: ((nodes at: 1) at: 4).
	result operator: ((nodes at: 1) at: 5).
	result right: ((nodes at: 1) at: 6).
	result rightParen: ((nodes at: 1) at: 7).
	result name: ((nodes at: 1) at: 8).
	result addNodes: (nodes at: 2) to: result statements.
	result addNode: (nodes at: 4) to: result statements.
	result addNode: (nodes at: 5) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameter1: nodes [
	| result |
	result := JCLKeywordParameterNode new.
	result key: (nodes at: 1).
	result equals: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameter4: nodes [
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
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForKeywordParameters2: nodes [
	| result |
	result := nodes at: 1.
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
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
	result addTokens: ((nodes at: 2) at: 3) to: result continuations.
	result addObjects: ((nodes at: 2) at: 4) to: result parameters.
	result right: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForParameters1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForParameters2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 1) to: (result at: 2).
	self add: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 4).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForParameters3: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 4).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForParameters4: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForPositionalParameters3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcHeader1: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcHeader2: nodes [
	| result |
	result := Array new: 7.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	self addAll: ((nodes at: 5) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 5) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 5) at: 4) to: (result at: 6).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcStatement1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForProcStatementWithoutPend1: nodes [
	| result |
	result := JCLProcStatementNode new.
	result slashes: ((nodes at: 1) at: 1).
	result operation: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result values.
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result addTokens: ((nodes at: 1) at: 5) to: result continuations.
	result addObjects: ((nodes at: 1) at: 6) to: result parameters.
	result name: ((nodes at: 1) at: 7).
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSeparator1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSeparator2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSeparator_1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForSeparator_2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
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
	result addTokens: ((nodes at: 4) at: 3) to: result continuations.
	result addObjects: ((nodes at: 4) at: 4) to: result parameters.
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
	result addTokens: ((nodes at: 5) at: 3) to: result continuations.
	result addObjects: ((nodes at: 5) at: 4) to: result parameters.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
JCLParser >> reduceActionForStatement__statement__1_: nodes [
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
JCLParser >> reduceActionForSwitchToStartOfLineAfterSeparator1: nodes [
	self scope: #startOfLineAfterSeparator.
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
