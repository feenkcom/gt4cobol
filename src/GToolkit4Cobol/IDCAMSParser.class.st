Class {
	#name : 'IDCAMSParser',
	#superclass : 'SmaCCGLRParser',
	#category : 'GToolkit4Cobol-IDCAMS',
	#package : 'GToolkit4Cobol',
	#tag : 'IDCAMS'
}

{ #category : 'generated' }
IDCAMSParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 37]
	).
]

{ #category : 'generated-accessing' }
IDCAMSParser class >> cacheId [
	^'2024-10-23T06:34:37.090209-05:00'
]

{ #category : 'generated' }
IDCAMSParser class >> definitionComment [
"%ignorecase;

%glr;


%root Program;
%prefix IDCAMS;
%suffix Node;
<id>
	: [a-z0-9\.\-]+
	;
<eols>
	: [\r\n]+
	;
<whitespace>
	: [\ \t]+
	| \-[\ \t]*(\r\n|\n)
	;File 
	: <eols>? Step 'step' (<eols> Step 'step')* <eols>? {{}}
	;
Step
	: <id> 'name' Arg 'argument'* {{}}
	;
Arg
	: Value
	| <id> 'name' ""="" 'equals' Value 'value' {{Assignment}}
	;
Value
	: <id> 'name' Parameters 'parameters'? {{}}
	;
Parameters
	: ""("" 'leftParen' Arg 'argument'* "")"" 'rightParen' {{}}
	| ""("" 'leftParen' Arg 'argument' ("","" 'comma' Arg 'argument')+ "")"" 'rightParen' {{}}
	;"
]

{ #category : 'generated' }
IDCAMSParser class >> reduceTable [
^#(
	#(13 0 #reduceActionForArg__argument__1: 254977 false) 
	#(11 0 #reduceActionForArg__argument__1: 195585 false) 
	#(12 2 #reduceActionForStep1: 234497 false) 
	#(9 2 #reduceActionForFile1: 165889 false) 
	#(15 1 #reduceActionForValue1: 354305 false) 
	#(13 2 #reduceActionForArg__argument__2: 254978 false) 
	#(14 1 #liftFirstValue: 279553 false) 
	#(9 3 #reduceActionForFile3: 165891 false) 
	#(9 3 #reduceActionForFile1: 165890 false) 
	#(11 2 #reduceActionForArg__argument__2: 195586 false) 
	#(15 2 #reduceActionForValue2: 354306 false) 
	#(9 4 #reduceActionForFile3: 165892 false) 
	#(10 2 #liftSecondValue: 195585 false) 
	#(14 3 #reduceActionForArg2: 279554 false) 
	#(16 3 #reduceActionForParameters1: 409601 false) 
	#(18 1 #reduceActionFor______comma__Arg__argument___1: 514049 false) 
	#(17 2 #reduceActionFor______comma__Arg__argument__1: 514049 false) 
	#(16 4 #reduceActionForParameters2: 409602 false) 
	#(18 2 #reduceActionFor______comma__Arg__argument___2: 514050 false)
	).
]

{ #category : 'generated' }
IDCAMSParser class >> scannerClass [
	^IDCAMSScanner
]

{ #category : 'generated' }
IDCAMSParser class >> startingStateForFile [
	^ 1
]

{ #category : 'generated' }
IDCAMSParser class >> symbolNames [
	^ #('"("' '")"' '","' '"="' '<id>' '<eols>' '<whitespace>' 'B e g i n' 'File' '(<eols> Step ''step'')' '(<eols> Step ''step'')*' 'Step' 'Arg ''argument''*' 'Arg' 'Value' 'Parameters' '("," ''comma'' Arg ''argument'')' '("," ''comma'' Arg ''argument'')+' 'E O F' 'error')
]

{ #category : 'generated' }
IDCAMSParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #IDCAMSFileNode #IDCAMSFileNode #IDCAMSStepNode #OrderedCollection #IDCAMSStepNode #OrderedCollection #IDCAMSProgramNode #IDCAMSValueNode #IDCAMSParametersNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCErrorNode)
]

{ #category : 'generated' }
IDCAMSParser class >> transitionTable [
^#(
#[1 0 9 0 5 0 13 0 6 0 17 0 9 0 21 0 12] 
#[1 0 6 0 5 0 6 0 6 0 25 0 13 0 6 0 19] 
#[1 0 9 0 5 0 29 0 12] 
#[0 0 0 0 19] 
#[1 0 10 0 6 0 33 0 11 0 10 0 19] 
#[1 0 37 0 5 0 14 0 6 0 41 0 14 0 41 0 15 0 14 0 19] 
#[1 0 10 0 6 0 49 0 11 0 10 0 19] 
#[1 0 53 0 6 0 57 0 10 0 18 0 19] 
#[1 0 61 0 1 0 22 0 2 0 22 0 3 0 65 0 4 0 22 0 5 0 22 0 6 0 69 0 16 0 22 0 19] 
#[0 0 26 0 2 0 5 0 6 0 19] 
#[0 0 30 0 2 0 3 0 5 0 6 0 19] 
#[1 0 73 0 6 0 57 0 10 0 34 0 19] 
#[1 0 9 0 5 0 77 0 12 0 38 0 19] 
#[0 0 42 0 6 0 19] 
#[1 0 6 0 2 0 7 0 5 0 81 0 13 0 85 0 14 0 85 0 15] 
#[1 0 89 0 5 0 93 0 15] 
#[0 0 46 0 2 0 3 0 5 0 6 0 19] 
#[1 0 9 0 5 0 77 0 12 0 50 0 19] 
#[0 0 54 0 6 0 19] 
#[1 0 97 0 2 0 37 0 5 0 41 0 14 0 41 0 15] 
#[1 0 101 0 3 0 105 0 17 0 109 0 18] 
#[1 0 61 0 1 0 22 0 2 0 22 0 3 0 22 0 5 0 22 0 6 0 69 0 16 0 22 0 19] 
#[0 0 58 0 2 0 3 0 5 0 6 0 19] 
#[0 0 62 0 2 0 3 0 5 0 6 0 19] 
#[1 0 37 0 5 0 113 0 14 0 113 0 15] 
#[0 0 66 0 2 0 3] 
#[1 0 117 0 2 0 101 0 3 0 121 0 17] 
#[0 0 70 0 2 0 3] 
#[0 0 74 0 2 0 3 0 5 0 6 0 19] 
#[0 0 78 0 2 0 3]
	).
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForArg2: nodes [
	| result |
	result := IDCAMSAssignmentNode new.
	result name: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForArg__argument__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForArg__argument__2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForFile1: nodes [
	| result |
	result := IDCAMSFileNode new.
	result addNode: (nodes at: 1) to: result steps.
	result addNodes: (nodes at: 2) to: result steps.
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForFile3: nodes [
	| result |
	result := IDCAMSFileNode new.
	result addNode: (nodes at: 2) to: result steps.
	result addNodes: (nodes at: 3) to: result steps.
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForParameters1: nodes [
	| result |
	result := IDCAMSParametersNode new.
	result leftParen: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result arguments.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForParameters2: nodes [
	| result |
	result := IDCAMSParametersNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForStep1: nodes [
	| result |
	result := IDCAMSStepNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result arguments.
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForValue1: nodes [
	| result |
	result := IDCAMSValueNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionForValue2: nodes [
	| result |
	result := IDCAMSValueNode new.
	result name: (nodes at: 1).
	result parameters: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionFor______comma__Arg__argument__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionFor______comma__Arg__argument___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : 'generated-reduction actions' }
IDCAMSParser >> reduceActionFor______comma__Arg__argument___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]
