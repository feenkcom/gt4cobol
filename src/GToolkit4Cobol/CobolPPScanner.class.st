Class {
	#name : #CobolPPScanner,
	#superclass : #SmaCCScanner,
	#category : #GToolkit4Cobol
}

{ #category : #'generated-initialization' }
CobolPPScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(286 'ADATA' 1) #(286 'ADV' 2) #(286 'ALIAS' 3) #(286 'ANSI' 4) #(286 'ANY' 5) #(286 'APOST' 6) #(286 'AR' 7) #(286 'ARITH' 8) #(286 'AUTO' 9) #(286 'AWO' 10) #(286 'BIN' 11) #(286 'BLOCK0' 12) #(286 'BUF' 13) #(286 'BUFSIZE' 14) #(286 'BY' 15) #(286 'CBL' 16) #(286 'CBLCARD' 17) #(286 'CICS' 18) #(286 'CO' 19) #(286 'COBOL2' 20) #(286 'COBOL3' 21) #(286 'CODEPAGE' 22) #(286 'COMPAT' 23) #(286 'COMPILE' 24) #(286 'COPY' 25) #(286 'CP' 26) #(286 'CPP' 27) #(286 'CPSM' 28) #(286 'CS' 29) #(286 'CURR' 30) #(286 'CURRENCY' 31) #(286 'DATA' 32) #(286 'DATEPROC' 33) #(286 'DBCS' 34) #(286 'DD' 35) #(286 'DEBUG' 36) #(286 'DECK' 37) #(286 'DIAGTRUNC' 38) #(286 'DLI' 39) #(286 'DLL' 40) #(286 'DP' 41) #(286 'DTR' 42) #(286 'DU' 43) #(286 'DUMP' 44) #(286 'DYN' 45) #(286 'DYNAM' 46) #(286 'EDF' 47) #(286 'EJECT' 48) #(286 'EJPD' 49) #(286 'EN' 50) #(286 'END-EXEC' 51) #(286 'ENGLISH' 52) #(286 'EPILOG' 53) #(286 'EXCI' 54) #(286 'EXEC' 55) #(286 'EXIT' 56) #(286 'EXP' 57) #(286 'EXPORTALL' 58) #(286 'EXTEND' 59) #(286 'FASTSRT' 60) #(286 'FEPI' 61) #(286 'FLAG' 62) #(286 'FLAGSTD' 63) #(286 'FSRT' 64) #(286 'FULL' 65) #(286 'GDS' 66) #(286 'GRAPHIC' 67) #(286 'HOOK' 68) #(286 'IN' 69) #(286 'INTDATE' 70) #(286 'JA' 71) #(286 'JP' 72) #(286 'KA' 73) #(286 'LANG' 74) #(286 'LANGUAGE' 75) #(286 'LC' 76) #(286 'LEASM' 77) #(286 'LENGTH' 78) #(286 'LIB' 79) #(286 'LILIAN' 80) #(286 'LIN' 81) #(286 'LINECOUNT' 82) #(286 'LINKAGE' 83) #(286 'LIST' 84) #(286 'LM' 85) #(286 'LONGMIXED' 86) #(286 'LONGUPPER' 87) #(286 'LU' 88) #(286 'MAP' 89) #(286 'MARGINS' 90) #(286 'MAX' 91) #(286 'MD' 92) #(286 'MDECK' 93) #(286 'MIG' 94) #(286 'MIXED' 95) #(286 'NAME' 96) #(286 'NAT' 97) #(286 'NATIONAL' 98) #(286 'NATLANG' 99) #(286 'NN' 100) #(286 'NO' 101) #(286 'NOADATA' 102) #(286 'NOADV' 103) #(286 'NOALIAS' 104) #(286 'NOAWO' 105) #(286 'NOBLOCK0' 106) #(286 'NOC' 107) #(286 'NOCBLCARD' 108) #(286 'NOCICS' 109) #(286 'NOCMPR2' 110) #(286 'NOCOMPILE' 111) #(286 'NOCPSM' 112) #(286 'NOCURR' 113) #(286 'NOCURRENCY' 114) #(286 'NOD' 115) #(286 'NODATEPROC' 116) #(286 'NODBCS' 117) #(286 'NODE' 118) #(286 'NODEBUG' 119) #(286 'NODECK' 120) #(286 'NODIAGTRUNC' 121) #(286 'NODLL' 122) #(286 'NODP' 123) #(286 'NODTR' 124) #(286 'NODU' 125) #(286 'NODUMP' 126) #(286 'NODYN' 127) #(286 'NODYNAM' 128) #(286 'NOEDF' 129) #(286 'NOEJPD' 130) #(286 'NOEPILOG' 131) #(286 'NOEXIT' 132) #(286 'NOEXP' 133) #(286 'NOEXPORTALL' 134) #(286 'NOF' 135) #(286 'NOFASTSRT' 136) #(286 'NOFEPI' 137) #(286 'NOFLAG' 138) #(286 'NOFLAGMIG' 139) #(286 'NOFLAGSTD' 140) #(286 'NOFSRT' 141) #(286 'NOGRAPHIC' 142) #(286 'NOHOOK' 143) #(286 'NOLENGTH' 144) #(286 'NOLIB' 145) #(286 'NOLINKAGE' 146) #(286 'NOLIST' 147) #(286 'NOMAP' 148) #(286 'NOMD' 149) #(286 'NOMDECK' 150) #(286 'NONAME' 151) #(286 'NONUM' 152) #(286 'NONUMBER' 153) #(286 'NOOBJ' 154) #(286 'NOOBJECT' 155) #(286 'NOOFF' 156) #(286 'NOOFFSET' 157) #(286 'NOOPSEQUENCE' 158) #(286 'NOOPT' 159) #(286 'NOOPTIMIZE' 160) #(286 'NOOPTIONS' 161) #(286 'NOP' 162) #(286 'NOPFD' 163) #(286 'NOPROLOG' 164) #(286 'NORENT' 165) #(286 'NOS' 166) #(286 'NOSEP' 167) #(286 'NOSEPARATE' 168) #(286 'NOSEQ' 169) #(286 'NOSEQUENCE' 170) #(286 'NOSOURCE' 171) #(286 'NOSPIE' 172) #(286 'NOSQL' 173) #(286 'NOSQLC' 174) #(286 'NOSQLCCSID' 175) #(286 'NOSSR' 176) #(286 'NOSSRANGE' 177) #(286 'NOSTDTRUNC' 178) #(286 'NOTERM' 179) #(286 'NOTERMINAL' 180) #(286 'NOTEST' 181) #(286 'NOTHREAD' 182) #(286 'NOTRIG' 183) #(286 'NOVBREF' 184) #(286 'NOWD' 185) #(286 'NOWORD' 186) #(286 'NOX' 187) #(286 'NOXREF' 188) #(286 'NOZWB' 189) #(286 'NS' 190) #(286 'NSEQ' 191) #(286 'NSYMBOL' 192) #(286 'NUM' 193) #(286 'NUMBER' 194) #(286 'NUMPROC' 195) #(286 'OBJ' 196) #(286 'OBJECT' 197) #(286 'OF' 198) #(286 'OFF' 199) #(286 'OFFSET' 200) #(286 'ON' 201) #(286 'OP' 202) #(286 'OPMARGINS' 203) #(286 'OPSEQUENCE' 204) #(286 'OPT' 205) #(286 'OPTFILE' 206) #(286 'OPTIMIZE' 207) #(286 'OPTIONS' 208) #(286 'OUT' 209) #(286 'OUTDD' 210) #(286 'PFD' 211) #(286 'PGMN' 212) #(286 'PGMNAME' 213) #(286 'PPTDBG' 214) #(286 'PROCESS' 215) #(286 'PROLOG' 216) #(286 'QUOTE' 217) #(286 'RENT' 218) #(286 'REPLACE' 219) #(286 'REPLACING' 220) #(286 'RMODE' 221) #(286 'SEP' 222) #(286 'SEPARATE' 223) #(286 'SEQ' 224) #(286 'SEQUENCE' 225) #(286 'SHORT' 226) #(286 'SIZE' 227) #(286 'SKIP1' 228) #(286 'SKIP2' 229) #(286 'SKIP3' 230) #(286 'SOURCE' 231) #(286 'SP' 232) #(286 'SPACE' 233) #(286 'SPIE' 234) #(286 'SQL' 235) #(286 'SQLC' 236) #(286 'SQLCCSID' 237) #(286 'SQLIMS' 238) #(286 'SS' 239) #(286 'SSR' 240) #(286 'SSRANGE' 241) #(286 'STD' 242) #(286 'SUPPRESS' 243) #(286 'SYSEIB' 244) #(286 'SZ' 245) #(286 'TERM' 246) #(286 'TERMINAL' 247) #(286 'TEST' 248) #(286 'THREAD' 249) #(286 'TITLE' 250) #(286 'TRIG' 251) #(286 'TRUNC' 252) #(286 'UE' 253) #(286 'UPPER' 254) #(286 'VBREF' 255) #(286 'WD' 256) #(286 'WORD' 257) #(286 'XMLPARSE' 258) #(286 'XMLSS' 259) #(286 'XOPTS' 260) #(286 'XP' 261) #(286 'XREF' 262) #(286 'YEARWINDOW' 263) #(286 'YW' 264) #(286 'ZWB' 265))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CobolPPScanner >> emptySymbolTokenId [
	^ 355
]

{ #category : #generated }
CobolPPScanner >> errorTokenId [
	^ 356
]

{ #category : #initialization }
CobolPPScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : #generated }
CobolPPScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan2 [
	self recordMatch: #(284).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan3 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan4 [
	self recordMatch: #(284).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan5 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(286).
			self step.
			('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan6 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(287).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scan7 [
	[ self recordMatch: #(286).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForToken [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(288) ].
	currentCharacter == Character cr ifTrue: [ ^ self scanForTokenX20 ].
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX16 ].
	^ self scanForTokenX22
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX1 [
	self recordMatch: #(280 286 290).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			(currentCharacter isDigit or: [ currentCharacter between: $A and: $F ])
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(284) ].
					currentCharacter isDigit or: [ currentCharacter between: $A and: $F ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ self step.
			(currentCharacter isDigit or: [ currentCharacter between: $A and: $F ])
				ifTrue: [ [ self step.
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(284) ].
					currentCharacter isDigit or: [ currentCharacter between: $A and: $F ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX10 [
	self recordMatch: #(273 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX11 [
	self recordMatch: #(272 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX12 [
	self recordMatch: #(271 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX13 [
	self recordMatch: #(270 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX14 [
	self recordMatch: #(269 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX15 [
	self recordMatch: #(268 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX16 [
	self recordMatch: #(290).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX17 [
	self recordMatch: #(290).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX18 [
	self recordMatch: #(289 290).
	self step.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
		ifTrue: [ [ self recordMatch: #(289).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character newPage
						or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX19 [
	self recordMatch: #(290).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(283) ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX2 [
	self recordMatch: #(285 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(285 286).
			self step.
			currentCharacter == $. ifTrue: [ ^ self scan6 ].
			currentCharacter isDigit ] whileTrue ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX20 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(288) ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX21 [
	currentCharacter == $N ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $Q ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $S ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $U ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $W ifTrue: [ ^ self scanForTokenX4 ].
	currentCharacter == $X ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX2 ].
	(currentCharacter isSeparator or: [ currentCharacter == $; ])
		ifTrue: [ ^ self scanForTokenX18 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ ^ self scanForTokenX3 ].
	^ self recordAndReportMatch: #(290)
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX22 [
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(266 290) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(267 290) ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(281 290) ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(282 290) ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter == $C ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $D ifTrue: [ ^ self scanForTokenX14 ].
	currentCharacter == $E ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $F ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $H ifTrue: [ ^ self scanForTokenX11 ].
	currentCharacter == $I ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $M ifTrue: [ ^ self scanForTokenX9 ].
	^ self scanForTokenX21
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX3 [
	self recordMatch: #(286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX4 [
	self recordMatch: #(279 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX5 [
	self recordMatch: #(278 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX6 [
	self recordMatch: #(277 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX7 [
	self recordMatch: #(276 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX8 [
	self recordMatch: #(275 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CobolPPScanner >> scanForTokenX9 [
	self recordMatch: #(274 286 290).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan6 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #private }
CobolPPScanner >> step [
	| atStart crlf returnBlock |
	atStart := start == stream position.
	super step.
	(atStart
		and: [ ('*/' includes: currentCharacter) and: [ (stream columnNumberFor: start) = 7 ] ])
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
CobolPPScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace)
]
