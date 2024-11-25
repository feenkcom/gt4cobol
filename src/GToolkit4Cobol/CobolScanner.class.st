Class {
	#name : #CobolScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'isFixedFormat'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #'generated-initialization' }
CobolScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(537 '66' 532) #(537 '77' 533) #(537 '88' 534) #(537 'ABORT' 1) #(537 'ACCEPT' 2) #(537 'ACCESS' 3) #(537 'ADD' 4) #(537 'ADDRESS' 5) #(537 'ADVANCING' 6) #(537 'AFTER' 7) #(537 'ALIGNED' 8) #(537 'ALL' 9) #(537 'ALPHABET' 10) #(537 'ALPHABETIC' 11) #(537 'ALPHABETIC-LOWER' 12) #(537 'ALPHABETIC-UPPER' 13) #(537 'ALPHANUMERIC' 14) #(537 'ALPHANUMERIC-EDITED' 15) #(537 'ALSO' 16) #(537 'ALTER' 17) #(537 'ALTERNATE' 18) #(537 'AND' 19) #(537 'ANY' 20) #(537 'ARE' 21) #(537 'AREA' 22) #(537 'AREAS' 23) #(537 'ASCENDING' 24) #(537 'ASCII' 25) #(537 'ASSIGN' 26) #(537 'ASSOCIATED-DATA' 27) #(537 'ASSOCIATED-DATA-LENGTH' 28) #(537 'AT' 29) #(537 'ATTRIBUTE' 30) #(537 'AUTHOR' 31) #(537 'AUTO' 32) #(537 'AUTO-SKIP' 33) #(537 'BACKGROUND-COLOR' 34) #(537 'BACKGROUND-COLOUR' 35) #(537 'BEEP' 36) #(537 'BEFORE' 37) #(537 'BELL' 38) #(537 'BINARY' 39) #(537 'BIT' 40) #(537 'BLANK' 41) #(537 'BLINK' 42) #(537 'BLOCK' 43) #(537 'BOTTOM' 44) #(537 'BOUNDS' 45) #(537 'BY' 46) #(537 'BYFUNCTION' 47) #(537 'BYTITLE' 48) #(537 'CALL' 49) #(537 'CANCEL' 50) #(537 'CAPABLE' 51) #(537 'CCSVERSION' 52) #(537 'CD' 53) #(537 'CF' 54) #(537 'CH' 55) #(537 'CHAINING' 56) #(537 'CHANGED' 57) #(537 'CHANNEL' 58) #(537 'CHARACTER' 59) #(537 'CHARACTERS' 60) #(537 'CICS' 61) #(537 'CLASS' 62) #(537 'CLOCK-UNITS' 63) #(537 'CLOSE' 64) #(537 'CLOSE-DISPOSITION' 65) #(537 'CODE-SET' 66) #(537 'COL' 67) #(537 'COLLATING' 68) #(537 'COLUMN' 69) #(537 'COMMA' 70) #(537 'COMMITMENT' 71) #(537 'COMMON' 72) #(537 'COMMUNICATION' 73) #(537 'COMP' 74) #(537 'COMP-1' 75) #(537 'COMP-2' 76) #(537 'COMP-3' 77) #(537 'COMP-4' 78) #(537 'COMP-5' 79) #(537 'COMPUTATIONAL' 80) #(537 'COMPUTATIONAL-1' 81) #(537 'COMPUTATIONAL-2' 82) #(537 'COMPUTATIONAL-3' 83) #(537 'COMPUTATIONAL-4' 84) #(537 'COMPUTATIONAL-5' 85) #(537 'COMPUTE' 86) #(537 'CONFIGURATION' 87) #(537 'CONTAINS' 88) #(537 'CONTENT' 89) #(537 'CONTINUE' 90) #(537 'CONTROL' 91) #(537 'CONTROL-POINT' 92) #(537 'CONVENTION' 93) #(537 'CONVERTING' 94) #(537 'CORR' 95) #(537 'CORRESPONDING' 96) #(537 'COUNT' 97) #(537 'CRUNCH' 98) #(537 'CURRENCY' 99) #(537 'CURSOR' 100) #(537 'DATA' 101) #(537 'DATA-BASE' 102) #(537 'DATE' 103) #(537 'DATE-COMPILED' 104) #(537 'DATE-WRITTEN' 105) #(537 'DAY' 106) #(537 'DAY-OF-WEEK' 107) #(537 'DBCS' 108) #(537 'DE' 109) #(537 'DEBUG-CONTENTS' 110) #(537 'DEBUG-ITEM' 111) #(537 'DEBUG-LINE' 112) #(537 'DEBUG-NAME' 113) #(537 'DEBUG-SUB-1' 114) #(537 'DEBUG-SUB-2' 115) #(537 'DEBUG-SUB-3' 116) #(537 'DEBUGGING' 117) #(537 'DECIMAL-POINT' 118) #(537 'DECLARATIVES' 119) #(537 'DEFAULT' 120) #(537 'DEFAULT-DISPLAY' 121) #(537 'DEFINITION' 122) #(537 'DELETE' 123) #(537 'DELIMITED' 124) #(537 'DELIMITER' 125) #(537 'DEPENDING' 126) #(537 'DESCENDING' 127) #(537 'DESTINATION' 128) #(537 'DETAIL' 129) #(537 'DFHRESP' 130) #(537 'DFHVALUE' 131) #(537 'DISABLE' 132) #(537 'DISK' 133) #(537 'DISPLAY' 134) #(537 'DISPLAY-1' 135) #(537 'DIVIDE' 136) #(537 'DIVISION' 137) #(537 'DONTCARE' 138) #(537 'DOUBLE' 139) #(537 'DOWN' 140) #(537 'DUPLICATES' 141) #(537 'DYNAMIC' 142) #(537 'EBCDIC' 143) #(537 'EGCS' 144) #(537 'EGI' 145) #(537 'ELSE' 146) #(537 'EMI' 147) #(537 'EMPTY-CHECK' 148) #(537 'ENABLE' 149) #(537 'END' 150) #(537 'END-ACCEPT' 151) #(537 'END-ADD' 152) #(537 'END-CALL' 153) #(537 'END-COMPUTE' 154) #(537 'END-DELETE' 155) #(537 'END-DIVIDE' 156) #(537 'END-EVALUATE' 157) #(537 'END-EXEC' 158) #(537 'END-IF' 159) #(537 'END-MULTIPLY' 160) #(537 'END-OF-PAGE' 161) #(537 'END-PERFORM' 162) #(537 'END-READ' 163) #(537 'END-RECEIVE' 164) #(537 'END-RETURN' 165) #(537 'END-REWRITE' 166) #(537 'END-SEARCH' 167) #(537 'END-START' 168) #(537 'END-STRING' 169) #(537 'END-SUBTRACT' 170) #(537 'END-UNSTRING' 171) #(537 'END-WRITE' 172) #(537 'ENTRY' 173) #(537 'ENTRY-PROCEDURE' 174) #(537 'ENVIRONMENT' 175) #(537 'EOL' 176) #(537 'EOP' 177) #(537 'EOS' 178) #(537 'EQUAL' 179) #(537 'ERASE' 180) #(537 'ERROR' 181) #(537 'ESCAPE' 182) #(537 'ESI' 183) #(537 'EVALUATE' 184) #(537 'EVENT' 185) #(537 'EVERY' 186) #(537 'EXCEPTION' 187) #(537 'EXCLUSIVE' 188) #(537 'EXEC' 189) #(537 'EXHIBIT' 190) #(537 'EXIT' 191) #(537 'EXPORT' 192) #(537 'EXTEND' 193) #(537 'EXTENDED' 194) #(537 'EXTERNAL' 195) #(537 'FALSE' 196) #(537 'FD' 197) #(537 'FILE' 198) #(537 'FILE-CONTROL' 199) #(537 'FILLER' 200) #(537 'FINAL' 201) #(537 'FIRST' 202) #(537 'FOOTING' 203) #(537 'FOR' 204) #(537 'FOREGROUND-COLOR' 205) #(537 'FOREGROUND-COLOUR' 206) #(537 'FROM' 207) #(537 'FULL' 208) #(537 'FUNCTION' 209) #(537 'FUNCTION-POINTER' 210) #(537 'FUNCTIONNAME' 211) #(537 'GENERATE' 212) #(537 'GIVING' 213) #(537 'GLOBAL' 214) #(537 'GO' 215) #(537 'GOBACK' 216) #(537 'GREATER' 217) #(537 'GRID' 218) #(537 'GROUP' 219) #(537 'HEADING' 220) #(537 'HIGH-VALUE' 221) #(537 'HIGH-VALUES' 222) #(537 'HIGHLIGHT' 223) #(537 'I-O' 224) #(537 'I-O-CONTROL' 225) #(537 'ID' 226) #(537 'IDENTIFICATION' 227) #(537 'IF' 228) #(537 'IMPLICIT' 229) #(537 'IMPORT' 230) #(537 'IN' 231) #(537 'INDEX' 232) #(537 'INDEXED' 233) #(537 'INDICATE' 234) #(537 'INITIAL' 235) #(537 'INITIALIZE' 236) #(537 'INITIATE' 237) #(537 'INPUT' 238) #(537 'INPUT-OUTPUT' 239) #(537 'INSPECT' 240) #(537 'INSTALLATION' 241) #(537 'INTEGER' 242) #(537 'INTO' 243) #(537 'INVALID' 244) #(537 'INVOKE' 245) #(537 'IS' 246) #(537 'JUST' 247) #(537 'JUSTIFIED' 248) #(537 'KANJI' 249) #(537 'KEPT' 250) #(537 'KEY' 251) #(537 'KEYBOARD' 252) #(537 'LABEL' 253) #(537 'LANGUAGE' 254) #(537 'LAST' 255) #(537 'LB' 256) #(537 'LD' 257) #(537 'LEADING' 258) #(537 'LEFT' 259) #(537 'LEFTLINE' 260) #(537 'LENGTH' 261) #(537 'LENGTH-CHECK' 262) #(537 'LESS' 263) #(537 'LIBACCESS' 264) #(537 'LIBPARAMETER' 265) #(537 'LIBRARY' 266) #(537 'LIMIT' 267) #(537 'LIMITS' 268) #(537 'LINAGE' 269) #(537 'LINAGE-COUNTER' 270) #(537 'LINE' 271) #(537 'LINE-COUNTER' 272) #(537 'LINES' 273) #(537 'LINKAGE' 274) #(537 'LIST' 275) #(537 'LOCAL' 276) #(537 'LOCAL-STORAGE' 277) #(537 'LOCK' 278) #(537 'LONG-DATE' 279) #(537 'LONG-TIME' 280) #(537 'LOW-VALUE' 281) #(537 'LOW-VALUES' 282) #(537 'LOWER' 283) #(537 'LOWLIGHT' 284) #(537 'MEMORY' 285) #(537 'MERGE' 286) #(537 'MESSAGE' 287) #(537 'MMDDYYYY' 288) #(537 'MODE' 289) #(537 'MODULES' 290) #(537 'MORE-LABELS' 291) #(537 'MOVE' 292) #(537 'MULTIPLE' 293) #(537 'MULTIPLY' 294) #(537 'NAMED' 295) #(537 'NATIONAL' 296) #(537 'NATIONAL-EDITED' 297) #(537 'NATIVE' 298) #(537 'NEGATIVE' 299) #(537 'NETWORK' 300) #(537 'NEXT' 301) #(537 'NO' 302) #(537 'NO-ECHO' 303) #(537 'NOT' 304) #(537 'NULL' 305) #(537 'NULLS' 306) #(537 'NUMBER' 307) #(537 'NUMERIC' 308) #(537 'NUMERIC-DATE' 309) #(537 'NUMERIC-EDITED' 310) #(537 'NUMERIC-TIME' 311) #(537 'OBJECT-COMPUTER' 312) #(537 'OCCURS' 313) #(537 'ODT' 314) #(537 'OF' 315) #(537 'OFF' 316) #(537 'OMITTED' 317) #(537 'ON' 318) #(537 'OPEN' 319) #(537 'OPTIONAL' 320) #(537 'OR' 321) #(537 'ORDER' 322) #(537 'ORDERLY' 323) #(537 'ORGANIZATION' 324) #(537 'OTHER' 325) #(537 'OUTPUT' 326) #(537 'OVERFLOW' 327) #(537 'OVERLINE' 328) #(537 'OWN' 329) #(537 'PACKED-DECIMAL' 330) #(537 'PADDING' 331) #(537 'PAGE' 332) #(537 'PAGE-COUNTER' 333) #(537 'PASSWORD' 334) #(537 'PERFORM' 335) #(537 'PF' 336) #(537 'PH' 337) #(537 'PIC' 338) #(537 'PICTURE' 339) #(537 'PLUS' 340) #(537 'POINTER' 341) #(537 'PORT' 342) #(537 'POSITION' 343) #(537 'POSITIVE' 344) #(537 'PRINTER' 345) #(537 'PRIVATE' 346) #(537 'PROCEDURE' 347) #(537 'PROCEDURE-POINTER' 348) #(537 'PROCEDURES' 349) #(537 'PROCEED' 350) #(537 'PROGRAM' 351) #(537 'PROGRAM-ID' 352) #(537 'PROGRAM-LIBRARY' 353) #(537 'PROMPT' 354) #(537 'PURGE' 355) #(537 'QUEUE' 356) #(537 'QUOTE' 357) #(537 'QUOTES' 358) #(537 'RANDOM' 359) #(537 'RD' 360) #(537 'READ' 361) #(537 'READER' 362) #(537 'REAL' 363) #(537 'RECEIVE' 364) #(537 'RECEIVED' 365) #(537 'RECORD' 366) #(537 'RECORDING' 367) #(537 'RECORDS' 368) #(537 'RECURSIVE' 369) #(537 'REDEFINES' 370) #(537 'REEL' 371) #(537 'REF' 372) #(537 'REFERENCE' 373) #(537 'REFERENCES' 374) #(537 'RELATIVE' 375) #(537 'RELEASE' 376) #(537 'REMAINDER' 377) #(537 'REMARKS' 378) #(537 'REMOTE' 379) #(537 'REMOVAL' 380) #(537 'REMOVE' 381) #(537 'RENAMES' 382) #(537 'REPLACING' 383) #(537 'REPORT' 384) #(537 'REPORTS' 385) #(537 'REQUIRED' 386) #(537 'RERUN' 387) #(537 'RESERVE' 388) #(537 'RESERVE-VIDEO' 389) #(537 'RESET' 390) #(537 'RETURN' 391) #(537 'RETURN-CODE' 392) #(537 'RETURNING' 393) #(537 'REVERSED' 394) #(537 'REWIND' 395) #(537 'REWRITE' 396) #(537 'RF' 397) #(537 'RH' 398) #(537 'RIGHT' 399) #(537 'ROUNDED' 400) #(537 'RUN' 401) #(537 'SAME' 402) #(537 'SAVE' 403) #(537 'SCREEN' 404) #(537 'SD' 405) #(537 'SEARCH' 406) #(537 'SECTION' 407) #(537 'SECURE' 408) #(537 'SECURITY' 409) #(537 'SEGMENT' 410) #(537 'SEGMENT-LIMIT' 411) #(537 'SELECT' 412) #(537 'SEND' 413) #(537 'SENTENCE' 414) #(537 'SEPARATE' 415) #(537 'SEQUENCE' 416) #(537 'SEQUENTIAL' 417) #(537 'SET' 418) #(537 'SHAREDBYALL' 419) #(537 'SHAREDBYRUNUNIT' 420) #(537 'SHARING' 421) #(537 'SHIFT-IN' 422) #(537 'SHIFT-OUT' 423) #(537 'SHORT-DATE' 424) #(537 'SIGN' 425) #(537 'SIZE' 426) #(537 'SORT' 427) #(537 'SORT-CONTROL' 428) #(537 'SORT-CORE-SIZE' 429) #(537 'SORT-FILE-SIZE' 430) #(537 'SORT-MERGE' 431) #(537 'SORT-MESSAGE' 432) #(537 'SORT-MODE-SIZE' 433) #(537 'SORT-RETURN' 434) #(537 'SOURCE' 435) #(537 'SOURCE-COMPUTER' 436) #(537 'SPACE' 437) #(537 'SPACES' 438) #(537 'SPECIAL-NAMES' 439) #(537 'SQL' 440) #(537 'SQLIMS' 441) #(537 'STANDARD' 442) #(537 'STANDARD-1' 443) #(537 'STANDARD-2' 444) #(537 'START' 445) #(537 'STATUS' 446) #(537 'STOP' 447) #(537 'STRING' 448) #(537 'SUB-QUEUE-1' 449) #(537 'SUB-QUEUE-2' 450) #(537 'SUB-QUEUE-3' 451) #(537 'SUBTRACT' 452) #(537 'SUM' 453) #(537 'SYMBOL' 454) #(537 'SYMBOLIC' 455) #(537 'SYNC' 456) #(537 'SYNCHRONIZED' 457) #(537 'TABLE' 458) #(537 'TALLY' 459) #(537 'TALLYING' 460) #(537 'TAPE' 461) #(537 'TASK' 462) #(537 'TERMINAL' 463) #(537 'TERMINATE' 464) #(537 'TEST' 465) #(537 'TEXT' 466) #(537 'THAN' 467) #(537 'THEN' 468) #(537 'THREAD' 469) #(537 'THREAD-LOCAL' 470) #(537 'THROUGH' 471) #(537 'THRU' 472) #(537 'TIME' 473) #(537 'TIMER' 474) #(537 'TIMES' 475) #(537 'TITLE' 476) #(537 'TO' 477) #(537 'TODAYS-DATE' 478) #(537 'TODAYS-NAME' 479) #(537 'TOP' 480) #(537 'TRAILING' 481) #(537 'TRUE' 482) #(537 'TRUNCATED' 483) #(537 'TYPE' 484) #(537 'TYPEDEF' 485) #(537 'UNDERLINE' 486) #(537 'UNIT' 487) #(537 'UNSTRING' 488) #(537 'UNTIL' 489) #(537 'UP' 490) #(537 'UPON' 491) #(537 'USAGE' 492) #(537 'USE' 493) #(537 'USING' 494) #(537 'VALUE' 495) #(537 'VALUES' 496) #(537 'VARYING' 497) #(537 'VIRTUAL' 498) #(537 'WAIT' 499) #(537 'WHEN' 500) #(537 'WHEN-COMPILED' 501) #(537 'WITH' 502) #(537 'WORDS' 503) #(537 'WORKING-STORAGE' 504) #(537 'WRITE' 505) #(537 'YEAR' 506) #(537 'YYYYDDD' 507) #(537 'YYYYMMDD' 508) #(537 'ZERO' 509) #(537 'ZERO-FILL' 510) #(537 'ZEROES' 511) #(537 'ZEROS' 512) #(535 '66' 532) #(535 '77' 533) #(535 '88' 534))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CobolScanner >> COMMENTENTRYLINEId [
	^ 539
]

{ #category : #private }
CobolScanner >> COMMENTLINE [
	^ self comment
]

{ #category : #generated }
CobolScanner >> INTEGERLITERALId [
	^ 535
]

{ #category : #private }
CobolScanner >> NEWLINE [
	^ self whitespace
]

{ #category : #private }
CobolScanner >> SEPARATOR [
	^ self whitespace
]

{ #category : #generated }
CobolScanner >> emptySymbolTokenId [
	^ 1339
]

{ #category : #generated }
CobolScanner >> errorTokenId [
	^ 1340
]

{ #category : #generated }
CobolScanner >> execCodeId [
	^ 1338
]

{ #category : #accessing }
CobolScanner >> isFixedFormat [
	^ isFixedFormat
]

{ #category : #accessing }
CobolScanner >> isFixedFormat: anObject [
	isFixedFormat := anObject
]

{ #category : #generated }
CobolScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #private }
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

{ #category : #initialization }
CobolScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : #generated }
CobolScanner >> scan1 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(538) ].
	^ self scan1X14
]

{ #category : #generated }
CobolScanner >> scan10 [
	[ self recordMatch: #(537).
	self step.
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan11 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(531).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan11 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan12 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(531).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan12 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan13 [
	[ self recordMatch: #(543).
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

{ #category : #generated }
CobolScanner >> scan14 [
	[ self recordMatch: #(543).
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

{ #category : #generated }
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

{ #category : #generated }
CobolScanner >> scan16 [
	[ self recordMatch: #(543).
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

{ #category : #generated }
CobolScanner >> scan17 [
	[ self recordMatch: #(543).
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

{ #category : #generated }
CobolScanner >> scan18 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan19 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan14 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X1 [
	self recordMatch: #(513).
	self step.
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(514) ].
	currentCharacter == $>
		ifTrue: [ self step.
			('Cc' includes: currentCharacter)
				ifTrue: [ self step.
					('Ee' includes: currentCharacter)
						ifTrue: [ self step.
							(currentCharacter == Character tab
								or: [ currentCharacter == Character newPage
										or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
								ifTrue: [ [ self recordMatch: #(539).
									self step.
									currentCharacter == Character tab
										or: [ currentCharacter == Character newPage
												or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
										whileTrue.
									(currentCharacter <= Character backspace
										or: [ currentCharacter == Character pageUp
												or: [ currentCharacter >= (Character value: 14) ] ])
										ifTrue: [ [ self recordMatch: #(539).
											self step.
											currentCharacter <= Character tab
												or: [ (currentCharacter between: Character pageUp and: Character newPage)
														or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ] ] ].
					^ self reportLastMatch ].
			(currentCharacter == Character tab
				or: [ currentCharacter == Character newPage
						or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
				ifTrue: [ [ self recordMatch: #(540).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character newPage
								or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
						whileTrue.
					(currentCharacter <= Character backspace
						or: [ currentCharacter == Character pageUp
								or: [ currentCharacter >= (Character value: 14) ] ])
						ifTrue: [ [ self recordMatch: #(540).
							self step.
							currentCharacter <= Character tab
								or: [ (currentCharacter between: Character pageUp and: Character newPage)
										or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X10 [
	self recordMatch: #(525).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(526) ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X11 [
	self recordMatch: #(518 519).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X12 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(538) ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X13 [
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(515) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(520) ].
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

{ #category : #generated }
CobolScanner >> scan1X14 [
	currentCharacter == Character cr ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $$ ifTrue: [ ^ self recordAndReportMatch: #(517) ].
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(523) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(529) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $, ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $- ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(530) ].
	^ self scan1X13
]

{ #category : #generated }
CobolScanner >> scan1X2 [
	self recordMatch: #(537).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(531) ].
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
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(531) ].
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

{ #category : #generated }
CobolScanner >> scan1X3 [
	self recordMatch: #(537).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan11 ].
	currentCharacter == $' ifTrue: [ ^ self scan12 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X4 [
	[ self recordMatch: #(535 537).
	self step.
	currentCharacter isDigit ] whileTrue.
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X5 [
	[ self recordMatch: #(541).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X6 [
	self recordMatch: #(521).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(522) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(527) ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X7 [
	self recordMatch: #(516).
	self step.
	currentCharacter == Character space
		ifTrue: [ ^ self recordAndReportMatch: #(542) ].
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X8 [
	self recordMatch: #(524).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan1X9 [
	self recordMatch: #(528).
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan2 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan3 ].
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(531).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
CobolScanner >> scan4 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan5 ].
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(531).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : #generated }
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

{ #category : #generated }
CobolScanner >> scan6 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan7 [
	[ self recordMatch: #(536).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(536).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			('+-' includes: currentCharacter)
				ifTrue: [ self step.
					currentCharacter isDigit
						ifTrue: [ [ self recordMatch: #(536).
							self step.
							currentCharacter isDigit ] whileTrue ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan8 [
	[ self recordMatch: #(535).
	self step.
	currentCharacter isDigit ] whileTrue.
	(',.' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scan9 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolScanner >> scanForToken [
	scope == #pic ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
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
		ifTrue: [ [ self recordMatch: #(541).
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

{ #category : #private }
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

{ #category : #generated }
CobolScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #NEWLINE nil #COMMENTLINE #whitespace #SEPARATOR)
]

{ #category : #generated }
CobolScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
