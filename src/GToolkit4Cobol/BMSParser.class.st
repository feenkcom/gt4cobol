Class {
	#name : #BMSParser,
	#superclass : #SmaCCGLRParser,
	#category : #'GToolkit4Cobol-BMS-Parser'
}

{ #category : #'generated-accessing' }
BMSParser class >> cacheId [
	^'2024-09-29T07:09:10.304187-05:00'
]

{ #category : #generated }
BMSParser class >> definitionComment [
"%ignorecase;

%glr;


%id <id> <name> <macro>;
%root Program;
%prefix BMS;
%suffix Node;
%hierarchy Value (Identifier Number String List);
<id>
	: [\&a-zA-Z0-9]+ ([-_]+ [\&a-zA-Z0-9]+)*
	;
<string>
	: (\' [^\']* \')+
	| (\"" [^\""]* \"")+
	;
<number>
	: ([\+\-]? [0-9]+ ([\,\.] [0-9]+)? | [\+\-]? [\,\.] [0-9]+) (e [\+\-]? [0-9]+)?
	;
<comment>
	: \* [^\r\n]*
	;
<continuation>
	: \-
	;
<whitespace>
	: \s+
	;File 
	: Macro 'macro'* {{}}
	;
Macro
	: <name> 'name'? <macro> 'macro' Fields? {{}}
	;
Fields
	: Field 'field'
	| Fields "","" 'comma' Field 'field'
	;
Field
	: <id> 'name' ""="" 'equals' Value 'value' {{}}
	| Value 'value' {{}}
	;
Value
	: <id> 'name' {{Identifier}}
	| <number> 'value' {{Number}}
	| <string> 'value' {{String}}
	| ""("" 'leftParen' Values? "")"" 'rightParen' {{List}}
	;
Values
	: Value 'value'
	| Values "","" 'comma' Value 'value'
	;"
]

{ #category : #accessing }
BMSParser class >> fileExtension [
	^ '.bms'
]

{ #category : #generated }
BMSParser class >> reduceTable [
^#(
	#(13 0 #reduceActionForMacro__macro__1: 425985 false) 
	#(12 1 #reduceActionForFile1: 416769 false) 
	#(13 2 #reduceActionForMacro__macro__2: 425986 false) 
	#(14 1 #reduceActionForMacro1: 449537 false) 
	#(17 1 #reduceActionForValue1: 651265 false) 
	#(17 1 #reduceActionForValue3: 651267 false) 
	#(17 1 #reduceActionForValue2: 651266 false) 
	#(14 2 #reduceActionForMacro2: 449538 false) 
	#(15 1 #reduceActionForFields1: 506881 false) 
	#(16 1 #reduceActionForField2: 571394 false) 
	#(14 2 #reduceActionForMacro3: 449539 false) 
	#(17 2 #reduceActionForValue4: 651268 false) 
	#(18 1 #reduceActionForFields1: 808961 false) 
	#(14 3 #reduceActionForMacro4: 449540 false) 
	#(17 3 #reduceActionForValue5: 651269 false) 
	#(16 3 #reduceActionForField1: 571393 false) 
	#(15 3 #reduceActionForFields2: 506882 false) 
	#(18 3 #reduceActionForFields2: 808962 false)
	).
]

{ #category : #generated }
BMSParser class >> scannerClass [
	^BMSScanner
]

{ #category : #generated }
BMSParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
BMSParser class >> symbolNames [
	^ #('"("' '")"' '","' '"="' '<id>' '<string>' '<number>' '<comment>' '<continuation>' '<whitespace>' 'B e g i n' 'File' 'Macro ''macro''*' 'Macro' 'Fields' 'Field' 'Value' 'Values' '<macro>' '<name>' 'E O F' 'error')
]

{ #category : #generated }
BMSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #BMSFileNode #BMSFileNode #OrderedCollection #BMSMacroNode #OrderedCollection #BMSFieldNode #BMSValueNode #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
BMSParser class >> transitionTable [
^#(
#[1 0 9 0 12 0 13 0 13 0 6 0 19 0 6 0 20 0 6 0 21] 
#[0 0 0 0 21] 
#[1 0 17 0 14 0 21 0 19 0 25 0 20 0 10 0 21] 
#[0 0 14 0 19 0 20 0 21] 
#[1 0 29 0 1 0 33 0 5 0 37 0 6 0 41 0 7 0 45 0 15 0 49 0 16 0 53 0 17 0 18 0 19 0 18 0 20 0 18 0 21] 
#[0 0 57 0 19] 
#[1 0 29 0 1 0 61 0 2 0 65 0 5 0 37 0 6 0 41 0 7 0 69 0 17 0 73 0 18] 
#[1 0 22 0 3 0 77 0 4 0 22 0 19 0 22 0 20 0 22 0 21] 
#[0 0 26 0 2 0 3 0 19 0 20 0 21] 
#[0 0 30 0 2 0 3 0 19 0 20 0 21] 
#[1 0 81 0 3 0 34 0 19 0 34 0 20 0 34 0 21] 
#[0 0 38 0 3 0 19 0 20 0 21] 
#[0 0 42 0 3 0 19 0 20 0 21] 
#[1 0 29 0 1 0 33 0 5 0 37 0 6 0 41 0 7 0 85 0 15 0 49 0 16 0 53 0 17 0 46 0 19 0 46 0 20 0 46 0 21] 
#[0 0 50 0 2 0 3 0 19 0 20 0 21] 
#[0 0 22 0 2 0 3 0 19 0 20 0 21] 
#[0 0 54 0 2 0 3] 
#[1 0 89 0 2 0 93 0 3] 
#[1 0 29 0 1 0 65 0 5 0 37 0 6 0 41 0 7 0 97 0 17] 
#[1 0 29 0 1 0 33 0 5 0 37 0 6 0 41 0 7 0 101 0 16 0 53 0 17] 
#[1 0 81 0 3 0 58 0 19 0 58 0 20 0 58 0 21] 
#[0 0 62 0 2 0 3 0 19 0 20 0 21] 
#[1 0 29 0 1 0 65 0 5 0 37 0 6 0 41 0 7 0 105 0 17] 
#[0 0 66 0 3 0 19 0 20 0 21] 
#[0 0 70 0 3 0 19 0 20 0 21] 
#[0 0 74 0 2 0 3]
	).
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForField1: nodes [
	| result |
	result := BMSFieldNode new.
	result name: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForField2: nodes [
	| result |
	result := BMSFieldNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForFields1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForFields2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForFile1: nodes [
	| result |
	result := BMSFileNode new.
	result addNodes: (nodes at: 1) to: result macros.
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro1: nodes [
	| result |
	result := BMSMacroNode new.
	result macro: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro2: nodes [
	| result |
	result := BMSMacroNode new.
	result macro: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result fields.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro3: nodes [
	| result |
	result := BMSMacroNode new.
	result name: (nodes at: 1).
	result macro: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro4: nodes [
	| result |
	result := BMSMacroNode new.
	result name: (nodes at: 1).
	result macro: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result fields.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro__macro__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForMacro__macro__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForValue1: nodes [
	| result |
	result := BMSIdentifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForValue2: nodes [
	| result |
	result := BMSNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForValue3: nodes [
	| result |
	result := BMSStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForValue4: nodes [
	| result |
	result := BMSListNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
BMSParser >> reduceActionForValue5: nodes [
	| result |
	result := BMSListNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightParen: (nodes at: 3).
	^ result
]
