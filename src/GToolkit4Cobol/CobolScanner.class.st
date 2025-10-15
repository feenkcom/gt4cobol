Class {
	#name : 'CobolScanner',
	#superclass : 'SmaCCScanner',
	#instVars : [
		'isFixedFormat'
	],
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated-initialization' }
CobolScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(540 '66' 535) #(540 '77' 536) #(540 '88' 537) #(540 'ABORT' 1) #(540 'ACCEPT' 2) #(540 'ACCESS' 3) #(540 'ADD' 4) #(540 'ADDRESS' 5) #(540 'ADVANCING' 6) #(540 'AFTER' 7) #(540 'ALIGNED' 8) #(540 'ALL' 9) #(540 'ALPHABET' 10) #(540 'ALPHABETIC' 11) #(540 'ALPHABETIC-LOWER' 12) #(540 'ALPHABETIC-UPPER' 13) #(540 'ALPHANUMERIC' 14) #(540 'ALPHANUMERIC-EDITED' 15) #(540 'ALSO' 16) #(540 'ALTER' 17) #(540 'ALTERNATE' 18) #(540 'AND' 19) #(540 'ANY' 20) #(540 'ARE' 21) #(540 'AREA' 22) #(540 'AREAS' 23) #(540 'ASCENDING' 24) #(540 'ASCII' 25) #(540 'ASSIGN' 26) #(540 'ASSOCIATED-DATA' 27) #(540 'ASSOCIATED-DATA-LENGTH' 28) #(540 'AT' 29) #(540 'ATTRIBUTE' 30) #(540 'AUTHOR' 31) #(540 'AUTO' 32) #(540 'AUTO-SKIP' 33) #(540 'BACKGROUND-COLOR' 34) #(540 'BACKGROUND-COLOUR' 35) #(540 'BEEP' 36) #(540 'BEFORE' 37) #(540 'BELL' 38) #(540 'BINARY' 39) #(540 'BIT' 40) #(540 'BLANK' 41) #(540 'BLINK' 42) #(540 'BLOCK' 43) #(540 'BOTTOM' 44) #(540 'BOUNDS' 45) #(540 'BY' 46) #(540 'BYFUNCTION' 47) #(540 'BYTITLE' 48) #(540 'CALL' 49) #(540 'CANCEL' 50) #(540 'CAPABLE' 51) #(540 'CCSVERSION' 52) #(540 'CD' 53) #(540 'CF' 54) #(540 'CH' 55) #(540 'CHAINING' 56) #(540 'CHANGED' 57) #(540 'CHANNEL' 58) #(540 'CHARACTER' 59) #(540 'CHARACTERS' 60) #(540 'CICS' 61) #(540 'CLASS' 62) #(540 'CLOB' 63) #(540 'CLOB-FILE' 64) #(540 'CLOB-LOCATOR' 65) #(540 'CLOCK-UNITS' 66) #(540 'CLOSE' 67) #(540 'CLOSE-DISPOSITION' 68) #(540 'CODE-SET' 69) #(540 'COL' 70) #(540 'COLLATING' 71) #(540 'COLUMN' 72) #(540 'COMMA' 73) #(540 'COMMITMENT' 74) #(540 'COMMON' 75) #(540 'COMMUNICATION' 76) #(540 'COMP' 77) #(540 'COMP-1' 78) #(540 'COMP-2' 79) #(540 'COMP-3' 80) #(540 'COMP-4' 81) #(540 'COMP-5' 82) #(540 'COMPUTATIONAL' 83) #(540 'COMPUTATIONAL-1' 84) #(540 'COMPUTATIONAL-2' 85) #(540 'COMPUTATIONAL-3' 86) #(540 'COMPUTATIONAL-4' 87) #(540 'COMPUTATIONAL-5' 88) #(540 'COMPUTE' 89) #(540 'CONFIGURATION' 90) #(540 'CONTAINS' 91) #(540 'CONTENT' 92) #(540 'CONTINUE' 93) #(540 'CONTROL' 94) #(540 'CONTROL-POINT' 95) #(540 'CONVENTION' 96) #(540 'CONVERTING' 97) #(540 'CORR' 98) #(540 'CORRESPONDING' 99) #(540 'COUNT' 100) #(540 'CRUNCH' 101) #(540 'CURRENCY' 102) #(540 'CURSOR' 103) #(540 'DATA' 104) #(540 'DATA-BASE' 105) #(540 'DATE' 106) #(540 'DATE-COMPILED' 107) #(540 'DATE-WRITTEN' 108) #(540 'DAY' 109) #(540 'DAY-OF-WEEK' 110) #(540 'DBCS' 111) #(540 'DE' 112) #(540 'DEBUG-CONTENTS' 113) #(540 'DEBUG-ITEM' 114) #(540 'DEBUG-LINE' 115) #(540 'DEBUG-NAME' 116) #(540 'DEBUG-SUB-1' 117) #(540 'DEBUG-SUB-2' 118) #(540 'DEBUG-SUB-3' 119) #(540 'DEBUGGING' 120) #(540 'DECIMAL-POINT' 121) #(540 'DECLARATIVES' 122) #(540 'DEFAULT' 123) #(540 'DEFAULT-DISPLAY' 124) #(540 'DEFINITION' 125) #(540 'DELETE' 126) #(540 'DELIMITED' 127) #(540 'DELIMITER' 128) #(540 'DEPENDING' 129) #(540 'DESCENDING' 130) #(540 'DESTINATION' 131) #(540 'DETAIL' 132) #(540 'DFHRESP' 133) #(540 'DFHVALUE' 134) #(540 'DISABLE' 135) #(540 'DISK' 136) #(540 'DISPLAY' 137) #(540 'DISPLAY-1' 138) #(540 'DIVIDE' 139) #(540 'DIVISION' 140) #(540 'DONTCARE' 141) #(540 'DOUBLE' 142) #(540 'DOWN' 143) #(540 'DUPLICATES' 144) #(540 'DYNAMIC' 145) #(540 'EBCDIC' 146) #(540 'EGCS' 147) #(540 'EGI' 148) #(540 'ELSE' 149) #(540 'EMI' 150) #(540 'EMPTY-CHECK' 151) #(540 'ENABLE' 152) #(540 'END' 153) #(540 'END-ACCEPT' 154) #(540 'END-ADD' 155) #(540 'END-CALL' 156) #(540 'END-COMPUTE' 157) #(540 'END-DELETE' 158) #(540 'END-DIVIDE' 159) #(540 'END-EVALUATE' 160) #(540 'END-EXEC' 161) #(540 'END-IF' 162) #(540 'END-MULTIPLY' 163) #(540 'END-OF-PAGE' 164) #(540 'END-PERFORM' 165) #(540 'END-READ' 166) #(540 'END-RECEIVE' 167) #(540 'END-RETURN' 168) #(540 'END-REWRITE' 169) #(540 'END-SEARCH' 170) #(540 'END-START' 171) #(540 'END-STRING' 172) #(540 'END-SUBTRACT' 173) #(540 'END-UNSTRING' 174) #(540 'END-WRITE' 175) #(540 'ENTRY' 176) #(540 'ENTRY-PROCEDURE' 177) #(540 'ENVIRONMENT' 178) #(540 'EOL' 179) #(540 'EOP' 180) #(540 'EOS' 181) #(540 'EQUAL' 182) #(540 'ERASE' 183) #(540 'ERROR' 184) #(540 'ESCAPE' 185) #(540 'ESI' 186) #(540 'EVALUATE' 187) #(540 'EVENT' 188) #(540 'EVERY' 189) #(540 'EXCEPTION' 190) #(540 'EXCLUSIVE' 191) #(540 'EXEC' 192) #(540 'EXHIBIT' 193) #(540 'EXIT' 194) #(540 'EXPORT' 195) #(540 'EXTEND' 196) #(540 'EXTENDED' 197) #(540 'EXTERNAL' 198) #(540 'FALSE' 199) #(540 'FD' 200) #(540 'FILE' 201) #(540 'FILE-CONTROL' 202) #(540 'FILLER' 203) #(540 'FINAL' 204) #(540 'FIRST' 205) #(540 'FOOTING' 206) #(540 'FOR' 207) #(540 'FOREGROUND-COLOR' 208) #(540 'FOREGROUND-COLOUR' 209) #(540 'FROM' 210) #(540 'FULL' 211) #(540 'FUNCTION' 212) #(540 'FUNCTION-POINTER' 213) #(540 'FUNCTIONNAME' 214) #(540 'GENERATE' 215) #(540 'GIVING' 216) #(540 'GLOBAL' 217) #(540 'GO' 218) #(540 'GOBACK' 219) #(540 'GREATER' 220) #(540 'GRID' 221) #(540 'GROUP' 222) #(540 'HEADING' 223) #(540 'HIGH-VALUE' 224) #(540 'HIGH-VALUES' 225) #(540 'HIGHLIGHT' 226) #(540 'I-O' 227) #(540 'I-O-CONTROL' 228) #(540 'ID' 229) #(540 'IDENTIFICATION' 230) #(540 'IF' 231) #(540 'IMPLICIT' 232) #(540 'IMPORT' 233) #(540 'IN' 234) #(540 'INDEX' 235) #(540 'INDEXED' 236) #(540 'INDICATE' 237) #(540 'INITIAL' 238) #(540 'INITIALIZE' 239) #(540 'INITIATE' 240) #(540 'INPUT' 241) #(540 'INPUT-OUTPUT' 242) #(540 'INSPECT' 243) #(540 'INSTALLATION' 244) #(540 'INTEGER' 245) #(540 'INTO' 246) #(540 'INVALID' 247) #(540 'INVOKE' 248) #(540 'IS' 249) #(540 'JUST' 250) #(540 'JUSTIFIED' 251) #(540 'KANJI' 252) #(540 'KEPT' 253) #(540 'KEY' 254) #(540 'KEYBOARD' 255) #(540 'LABEL' 256) #(540 'LANGUAGE' 257) #(540 'LAST' 258) #(540 'LB' 259) #(540 'LD' 260) #(540 'LEADING' 261) #(540 'LEFT' 262) #(540 'LEFTLINE' 263) #(540 'LENGTH' 264) #(540 'LENGTH-CHECK' 265) #(540 'LESS' 266) #(540 'LIBACCESS' 267) #(540 'LIBPARAMETER' 268) #(540 'LIBRARY' 269) #(540 'LIMIT' 270) #(540 'LIMITS' 271) #(540 'LINAGE' 272) #(540 'LINAGE-COUNTER' 273) #(540 'LINE' 274) #(540 'LINE-COUNTER' 275) #(540 'LINES' 276) #(540 'LINKAGE' 277) #(540 'LIST' 278) #(540 'LOCAL' 279) #(540 'LOCAL-STORAGE' 280) #(540 'LOCK' 281) #(540 'LONG-DATE' 282) #(540 'LONG-TIME' 283) #(540 'LOW-VALUE' 284) #(540 'LOW-VALUES' 285) #(540 'LOWER' 286) #(540 'LOWLIGHT' 287) #(540 'MEMORY' 288) #(540 'MERGE' 289) #(540 'MESSAGE' 290) #(540 'MMDDYYYY' 291) #(540 'MODE' 292) #(540 'MODULES' 293) #(540 'MORE-LABELS' 294) #(540 'MOVE' 295) #(540 'MULTIPLE' 296) #(540 'MULTIPLY' 297) #(540 'NAMED' 298) #(540 'NATIONAL' 299) #(540 'NATIONAL-EDITED' 300) #(540 'NATIVE' 301) #(540 'NEGATIVE' 302) #(540 'NETWORK' 303) #(540 'NEXT' 304) #(540 'NO' 305) #(540 'NO-ECHO' 306) #(540 'NOT' 307) #(540 'NULL' 308) #(540 'NULLS' 309) #(540 'NUMBER' 310) #(540 'NUMERIC' 311) #(540 'NUMERIC-DATE' 312) #(540 'NUMERIC-EDITED' 313) #(540 'NUMERIC-TIME' 314) #(540 'OBJECT-COMPUTER' 315) #(540 'OCCURS' 316) #(540 'ODT' 317) #(540 'OF' 318) #(540 'OFF' 319) #(540 'OMITTED' 320) #(540 'ON' 321) #(540 'OPEN' 322) #(540 'OPTIONAL' 323) #(540 'OR' 324) #(540 'ORDER' 325) #(540 'ORDERLY' 326) #(540 'ORGANIZATION' 327) #(540 'OTHER' 328) #(540 'OUTPUT' 329) #(540 'OVERFLOW' 330) #(540 'OVERLINE' 331) #(540 'OWN' 332) #(540 'PACKED-DECIMAL' 333) #(540 'PADDING' 334) #(540 'PAGE' 335) #(540 'PAGE-COUNTER' 336) #(540 'PASSWORD' 337) #(540 'PERFORM' 338) #(540 'PF' 339) #(540 'PH' 340) #(540 'PIC' 341) #(540 'PICTURE' 342) #(540 'PLUS' 343) #(540 'POINTER' 344) #(540 'PORT' 345) #(540 'POSITION' 346) #(540 'POSITIVE' 347) #(540 'PRINTER' 348) #(540 'PRIVATE' 349) #(540 'PROCEDURE' 350) #(540 'PROCEDURE-POINTER' 351) #(540 'PROCEDURES' 352) #(540 'PROCEED' 353) #(540 'PROGRAM' 354) #(540 'PROGRAM-ID' 355) #(540 'PROGRAM-LIBRARY' 356) #(540 'PROMPT' 357) #(540 'PURGE' 358) #(540 'QUEUE' 359) #(540 'QUOTE' 360) #(540 'QUOTES' 361) #(540 'RANDOM' 362) #(540 'RD' 363) #(540 'READ' 364) #(540 'READER' 365) #(540 'REAL' 366) #(540 'RECEIVE' 367) #(540 'RECEIVED' 368) #(540 'RECORD' 369) #(540 'RECORDING' 370) #(540 'RECORDS' 371) #(540 'RECURSIVE' 372) #(540 'REDEFINES' 373) #(540 'REEL' 374) #(540 'REF' 375) #(540 'REFERENCE' 376) #(540 'REFERENCES' 377) #(540 'RELATIVE' 378) #(540 'RELEASE' 379) #(540 'REMAINDER' 380) #(540 'REMARKS' 381) #(540 'REMOTE' 382) #(540 'REMOVAL' 383) #(540 'REMOVE' 384) #(540 'RENAMES' 385) #(540 'REPLACING' 386) #(540 'REPORT' 387) #(540 'REPORTS' 388) #(540 'REQUIRED' 389) #(540 'RERUN' 390) #(540 'RESERVE' 391) #(540 'RESERVE-VIDEO' 392) #(540 'RESET' 393) #(540 'RETURN' 394) #(540 'RETURN-CODE' 395) #(540 'RETURNING' 396) #(540 'REVERSED' 397) #(540 'REWIND' 398) #(540 'REWRITE' 399) #(540 'RF' 400) #(540 'RH' 401) #(540 'RIGHT' 402) #(540 'ROUNDED' 403) #(540 'RUN' 404) #(540 'SAME' 405) #(540 'SAVE' 406) #(540 'SCREEN' 407) #(540 'SD' 408) #(540 'SEARCH' 409) #(540 'SECTION' 410) #(540 'SECURE' 411) #(540 'SECURITY' 412) #(540 'SEGMENT' 413) #(540 'SEGMENT-LIMIT' 414) #(540 'SELECT' 415) #(540 'SEND' 416) #(540 'SENTENCE' 417) #(540 'SEPARATE' 418) #(540 'SEQUENCE' 419) #(540 'SEQUENTIAL' 420) #(540 'SET' 421) #(540 'SHAREDBYALL' 422) #(540 'SHAREDBYRUNUNIT' 423) #(540 'SHARING' 424) #(540 'SHIFT-IN' 425) #(540 'SHIFT-OUT' 426) #(540 'SHORT-DATE' 427) #(540 'SIGN' 428) #(540 'SIZE' 429) #(540 'SORT' 430) #(540 'SORT-CONTROL' 431) #(540 'SORT-CORE-SIZE' 432) #(540 'SORT-FILE-SIZE' 433) #(540 'SORT-MERGE' 434) #(540 'SORT-MESSAGE' 435) #(540 'SORT-MODE-SIZE' 436) #(540 'SORT-RETURN' 437) #(540 'SOURCE' 438) #(540 'SOURCE-COMPUTER' 439) #(540 'SPACE' 440) #(540 'SPACES' 441) #(540 'SPECIAL-NAMES' 442) #(540 'SQL' 443) #(540 'SQLIMS' 444) #(540 'STANDARD' 445) #(540 'STANDARD-1' 446) #(540 'STANDARD-2' 447) #(540 'START' 448) #(540 'STATUS' 449) #(540 'STOP' 450) #(540 'STRING' 451) #(540 'SUB-QUEUE-1' 452) #(540 'SUB-QUEUE-2' 453) #(540 'SUB-QUEUE-3' 454) #(540 'SUBTRACT' 455) #(540 'SUM' 456) #(540 'SYMBOL' 457) #(540 'SYMBOLIC' 458) #(540 'SYNC' 459) #(540 'SYNCHRONIZED' 460) #(540 'TABLE' 461) #(540 'TALLY' 462) #(540 'TALLYING' 463) #(540 'TAPE' 464) #(540 'TASK' 465) #(540 'TERMINAL' 466) #(540 'TERMINATE' 467) #(540 'TEST' 468) #(540 'TEXT' 469) #(540 'THAN' 470) #(540 'THEN' 471) #(540 'THREAD' 472) #(540 'THREAD-LOCAL' 473) #(540 'THROUGH' 474) #(540 'THRU' 475) #(540 'TIME' 476) #(540 'TIMER' 477) #(540 'TIMES' 478) #(540 'TITLE' 479) #(540 'TO' 480) #(540 'TODAYS-DATE' 481) #(540 'TODAYS-NAME' 482) #(540 'TOP' 483) #(540 'TRAILING' 484) #(540 'TRUE' 485) #(540 'TRUNCATED' 486) #(540 'TYPE' 487) #(540 'TYPEDEF' 488) #(540 'UNDERLINE' 489) #(540 'UNIT' 490) #(540 'UNSTRING' 491) #(540 'UNTIL' 492) #(540 'UP' 493) #(540 'UPON' 494) #(540 'USAGE' 495) #(540 'USE' 496) #(540 'USING' 497) #(540 'VALUE' 498) #(540 'VALUES' 499) #(540 'VARYING' 500) #(540 'VIRTUAL' 501) #(540 'WAIT' 502) #(540 'WHEN' 503) #(540 'WHEN-COMPILED' 504) #(540 'WITH' 505) #(540 'WORDS' 506) #(540 'WORKING-STORAGE' 507) #(540 'WRITE' 508) #(540 'YEAR' 509) #(540 'YYYYDDD' 510) #(540 'YYYYMMDD' 511) #(540 'ZERO' 512) #(540 'ZERO-FILL' 513) #(540 'ZEROES' 514) #(540 'ZEROS' 515) #(538 '66' 535) #(538 '77' 536) #(538 '88' 537))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
CobolScanner >> COMMENTENTRYLINEId [
	^ 542
]

{ #category : 'private' }
CobolScanner >> COMMENTLINE [
	^ self comment
]

{ #category : 'generated' }
CobolScanner >> INTEGERLITERALId [
	^ 538
]

{ #category : 'private' }
CobolScanner >> NEWLINE [
	^ self whitespace
]

{ #category : 'private' }
CobolScanner >> SEPARATOR [
	^ self whitespace
]

{ #category : 'generated' }
CobolScanner >> emptySymbolTokenId [
	^ 1343
]

{ #category : 'generated' }
CobolScanner >> errorTokenId [
	^ 1344
]

{ #category : 'generated' }
CobolScanner >> execCodeId [
	^ 1342
]

{ #category : 'accessing' }
CobolScanner >> isFixedFormat [
	^ isFixedFormat
]

{ #category : 'accessing' }
CobolScanner >> isFixedFormat: anObject [
	isFixedFormat := anObject
]

{ #category : 'generated' }
CobolScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'private' }
CobolScanner >> next [
	scope = #execCode
		ifTrue: [ scope := #default.
			[ stream atEnd or: [ stream peek isSeparator not ] ]
				whileFalse: [ stream next ].
			self resetScanner.
			[ stream atEnd ]
				whileFalse: [ self step.
					currentCharacter asUppercase = $C
						ifTrue: [ (outputStream position > 8
								and: [ (outputStream contents last: 8) asUppercase = 'END-EXEC' ])
								ifTrue: [ stream position: stream position - 8.
									outputStream position: outputStream position - 8.
									^ self recordAndReportMatch: {self execCodeId} ] ] ].
			^ self reportLastMatch ].
	scope = #commentEntry
		ifTrue: [ | position |
			scope := #default.
			position := stream position.
			[ stream atEnd or: [ stream peek isSeparator not ] ]
				whileFalse: [ stream next ].
			(stream atEnd not and: [ stream columnNumber >= 12 ])
				ifTrue: [ self resetScanner.
					self recordMatch: {self COMMENTENTRYLINEId}.
					[ stream atEnd ]
						whileFalse: [ self step.
							currentCharacter isSeparator
								ifFalse: [ stream columnNumber < 12 ifTrue: [ ^ self reportLastMatch ].
									self recordMatch: {self COMMENTENTRYLINEId} ] ].
					^ self reportLastMatch ].
			stream position: position ].
	^ super next
]

{ #category : 'initialization' }
CobolScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : 'generated' }
CobolScanner >> scan1 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(541) ].
	^ self scan1X14
]

{ #category : 'generated' }
CobolScanner >> scan10 [
	[ self recordMatch: #(540).
	self step.
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan11 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(534).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan11 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan12 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(534).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan13 [
	[ self recordMatch: #(546).
	self step.
	currentCharacter == $, ifTrue: [ ^ self scan14 ].
	currentCharacter == $. ifTrue: [ ^ self scan15 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan16 ].
	currentCharacter == $$
		or: [ (currentCharacter between: $( and: $:) or: [ '<>' includes: currentCharacter ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan14 [
	[ self recordMatch: #(546).
	self step.
	currentCharacter == $, ] whileTrue.
	currentCharacter == $. ifTrue: [ ^ self scan15 ].
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan16 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $( and: $:) or: [ '<>' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan15 [
	self step.
	currentCharacter == $, ifTrue: [ ^ self scan14 ].
	currentCharacter == $. ifTrue: [ ^ self scan19 ].
	currentCharacter isDigit ifTrue: [ ^ self scan17 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan16 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $( and: $:) or: [ '<>' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan16 [
	[ self recordMatch: #(546).
	self step.
	currentCharacter == $, ifTrue: [ ^ self scan14 ].
	currentCharacter == $. ifTrue: [ ^ self scan15 ].
	currentCharacter == $_ ifTrue: [ ^ self scan18 ].
	currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] ] whileTrue.
	(currentCharacter == $$
		or: [ (currentCharacter between: $( and: $:) or: [ '<>' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan17 [
	[ self recordMatch: #(546).
	self step.
	currentCharacter == $, ifTrue: [ ^ self scan14 ].
	currentCharacter == $. ifTrue: [ ^ self scan15 ].
	currentCharacter == $_ ifTrue: [ ^ self scan18 ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == $-
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan16 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $( and: $:) or: [ '<>' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan18 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan19 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X1 [
	self recordMatch: #(516).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(517) ].
	currentCharacter == $>
		ifTrue: [ self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							(currentCharacter == Character tab
								or: [ currentCharacter == Character newPage
										or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
								ifTrue: [ [ self recordMatch: #(542).
									self step.
									currentCharacter == Character tab
										or: [ currentCharacter == Character newPage
												or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
										whileTrue.
									(currentCharacter <= Character backspace
										or: [ currentCharacter == Character pageUp
												or: [ currentCharacter >= (Character value: 14) ] ])
										ifTrue: [ [ self recordMatch: #(542).
											self step.
											currentCharacter <= Character tab
												or: [ (currentCharacter between: Character pageUp and: Character newPage)
														or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ] ] ].
					^ self reportLastMatch ].
			(currentCharacter == Character tab
				or: [ currentCharacter == Character newPage
						or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
				ifTrue: [ [ self recordMatch: #(543).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character newPage
								or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
						whileTrue.
					(currentCharacter <= Character backspace
						or: [ currentCharacter == Character pageUp
								or: [ currentCharacter >= (Character value: 14) ] ])
						ifTrue: [ [ self recordMatch: #(543).
							self step.
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X10 [
	self recordMatch: #(528).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(529) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X11 [
	self recordMatch: #(521 522).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X12 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(541) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X13 [
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(518) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(523) ].
	currentCharacter == $> ifTrue: [ ^ self scan1X10 ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X4 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan1X2 ].
	(currentCharacter isSeparator or: [ currentCharacter == $; ])
		ifTrue: [ ^ self scan1X5 ].
	('GNZgnz' includes: currentCharacter) ifTrue: [ ^ self scan1X3 ].
	((currentCharacter between: $A and: $Y)
		or: [ currentCharacter between: $a and: $y ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X14 [
	currentCharacter == Character cr ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(520) ].
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(526) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(532) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $, ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $- ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(533) ].
	^ self scan1X13
]

{ #category : 'generated' }
CobolScanner >> scan1X2 [
	self recordMatch: #(540).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(534) ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(534) ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X3 [
	self recordMatch: #(540).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan11 ].
	currentCharacter == $' ifTrue: [ ^ self scan12 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X4 [
	[ self recordMatch: #(538 540).
	self step.
	currentCharacter isDigit ] whileTrue.
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X5 [
	[ self recordMatch: #(544).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X6 [
	self recordMatch: #(524).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(525) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(530) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X7 [
	self recordMatch: #(519).
	self step.
	currentCharacter == Character space
		ifTrue: [ ^ self recordAndReportMatch: #(545) ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X8 [
	self recordMatch: #(527).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan1X9 [
	self recordMatch: #(531).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan2 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan3 ].
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(534).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
CobolScanner >> scan3 [
	self step.
	currentCharacter == Character space
		ifTrue: [ self step.
			currentCharacter == Character space
				ifTrue: [ self step.
					currentCharacter == Character space
						ifTrue: [ self step.
							currentCharacter == Character space
								ifTrue: [ self step.
									currentCharacter == Character space
										ifTrue: [ self step.
											currentCharacter == Character space
												ifTrue: [ self step.
													currentCharacter == $-
														ifTrue: [ [ self step.
															currentCharacter == $" ifTrue: [ ^ self scan2 ].
															currentCharacter == Character tab
																or: [ currentCharacter == Character space ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan4 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan5 ].
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(534).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
CobolScanner >> scan5 [
	self step.
	currentCharacter == Character space
		ifTrue: [ self step.
			currentCharacter == Character space
				ifTrue: [ self step.
					currentCharacter == Character space
						ifTrue: [ self step.
							currentCharacter == Character space
								ifTrue: [ self step.
									currentCharacter == Character space
										ifTrue: [ self step.
											currentCharacter == Character space
												ifTrue: [ self step.
													currentCharacter == $-
														ifTrue: [ [ self step.
															currentCharacter == $' ifTrue: [ ^ self scan4 ].
															currentCharacter == Character tab
																or: [ currentCharacter == Character space ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan6 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan7 [
	[ self recordMatch: #(539).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(539).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			('+-' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self recordMatch: #(539).
							self step.
							currentCharacter isDigit ] whileTrue ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan8 [
	[ self recordMatch: #(538).
	self step.
	currentCharacter isDigit ] whileTrue.
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scan9 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scanForToken [
	scope == #pic ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $, ifTrue: [ ^ self scan14 ].
	currentCharacter == $. ifTrue: [ ^ self scan19 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan16 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
		ifTrue: [ [ self recordMatch: #(544).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character newPage
						or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
				whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $( and: $<) or: [ currentCharacter == $> ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'private' }
CobolScanner >> step [
	| atStart crlf returnBlock |
	atStart := start == stream position.
	super step.
	(isFixedFormat
		and: [ atStart
				and: [ ('*/' includes: currentCharacter) and: [ (stream columnNumberFor: start) = 7 ] ] ])
		ifTrue: [ crlf := String crlf.
			[ stream atEnd or: [ crlf includes: stream peek ] ]
				whileFalse: [ stream next ].
			returnBlock := returnMatchBlock.
			comments
				add: {start + 1.
						stream position}.
			returnBlock value: self next ]
]

{ #category : 'generated' }
CobolScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #NEWLINE nil #COMMENTLINE #whitespace #SEPARATOR)
]

{ #category : 'generated' }
CobolScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
