Class {
	#name : 'CobolPPScanner',
	#superclass : 'SmaCCScanner',
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated-initialization' }
CobolPPScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(289 'ADATA' 4) #(289 'ADV' 5) #(289 'ALIAS' 6) #(289 'ANSI' 7) #(289 'ANY' 8) #(289 'APOST' 9) #(289 'AR' 10) #(289 'ARITH' 11) #(289 'AUTO' 12) #(289 'AWO' 13) #(289 'BIN' 14) #(289 'BLOCK0' 15) #(289 'BUF' 16) #(289 'BUFSIZE' 17) #(289 'BY' 18) #(289 'CBL' 19) #(289 'CBLCARD' 20) #(289 'CICS' 21) #(289 'CO' 22) #(289 'COBOL2' 23) #(289 'COBOL3' 24) #(289 'CODEPAGE' 25) #(289 'COMPAT' 26) #(289 'COMPILE' 27) #(289 'COPY' 28) #(289 'CP' 29) #(289 'CPP' 30) #(289 'CPSM' 31) #(289 'CS' 32) #(289 'CURR' 33) #(289 'CURRENCY' 34) #(289 'DATA' 35) #(289 'DATEPROC' 36) #(289 'DBCS' 37) #(289 'DD' 38) #(289 'DEBUG' 39) #(289 'DECK' 40) #(289 'DIAGTRUNC' 41) #(289 'DLI' 42) #(289 'DLL' 43) #(289 'DP' 44) #(289 'DTR' 45) #(289 'DU' 46) #(289 'DUMP' 47) #(289 'DYN' 48) #(289 'DYNAM' 49) #(289 'EDF' 50) #(289 'EJECT' 51) #(289 'EJPD' 52) #(289 'EN' 53) #(289 'END-EXEC' 54) #(289 'ENGLISH' 55) #(289 'EPILOG' 56) #(289 'EXCI' 57) #(289 'EXEC' 58) #(289 'EXIT' 59) #(289 'EXP' 60) #(289 'EXPORTALL' 61) #(289 'EXTEND' 62) #(289 'FASTSRT' 63) #(289 'FEPI' 64) #(289 'FLAG' 65) #(289 'FLAGSTD' 66) #(289 'FSRT' 67) #(289 'FULL' 68) #(289 'GDS' 69) #(289 'GRAPHIC' 70) #(289 'HOOK' 71) #(289 'IN' 72) #(289 'INTDATE' 73) #(289 'JA' 74) #(289 'JP' 75) #(289 'KA' 76) #(289 'LANG' 77) #(289 'LANGUAGE' 78) #(289 'LC' 79) #(289 'LEASM' 80) #(289 'LENGTH' 81) #(289 'LIB' 82) #(289 'LILIAN' 83) #(289 'LIN' 84) #(289 'LINECOUNT' 85) #(289 'LINKAGE' 86) #(289 'LIST' 87) #(289 'LM' 88) #(289 'LONGMIXED' 89) #(289 'LONGUPPER' 90) #(289 'LU' 91) #(289 'MAP' 92) #(289 'MARGINS' 93) #(289 'MAX' 94) #(289 'MD' 95) #(289 'MDECK' 96) #(289 'MIG' 97) #(289 'MIXED' 98) #(289 'NAME' 99) #(289 'NAT' 100) #(289 'NATIONAL' 101) #(289 'NATLANG' 102) #(289 'NN' 103) #(289 'NO' 104) #(289 'NOADATA' 105) #(289 'NOADV' 106) #(289 'NOALIAS' 107) #(289 'NOAWO' 108) #(289 'NOBLOCK0' 109) #(289 'NOC' 110) #(289 'NOCBLCARD' 111) #(289 'NOCICS' 112) #(289 'NOCMPR2' 113) #(289 'NOCOMPILE' 114) #(289 'NOCPSM' 115) #(289 'NOCURR' 116) #(289 'NOCURRENCY' 117) #(289 'NOD' 118) #(289 'NODATEPROC' 119) #(289 'NODBCS' 120) #(289 'NODE' 121) #(289 'NODEBUG' 122) #(289 'NODECK' 123) #(289 'NODIAGTRUNC' 124) #(289 'NODLL' 125) #(289 'NODP' 126) #(289 'NODTR' 127) #(289 'NODU' 128) #(289 'NODUMP' 129) #(289 'NODYN' 130) #(289 'NODYNAM' 131) #(289 'NOEDF' 132) #(289 'NOEJPD' 133) #(289 'NOEPILOG' 134) #(289 'NOEXIT' 135) #(289 'NOEXP' 136) #(289 'NOEXPORTALL' 137) #(289 'NOF' 138) #(289 'NOFASTSRT' 139) #(289 'NOFEPI' 140) #(289 'NOFLAG' 141) #(289 'NOFLAGMIG' 142) #(289 'NOFLAGSTD' 143) #(289 'NOFSRT' 144) #(289 'NOGRAPHIC' 145) #(289 'NOHOOK' 146) #(289 'NOLENGTH' 147) #(289 'NOLIB' 148) #(289 'NOLINKAGE' 149) #(289 'NOLIST' 150) #(289 'NOMAP' 151) #(289 'NOMD' 152) #(289 'NOMDECK' 153) #(289 'NONAME' 154) #(289 'NONUM' 155) #(289 'NONUMBER' 156) #(289 'NOOBJ' 157) #(289 'NOOBJECT' 158) #(289 'NOOFF' 159) #(289 'NOOFFSET' 160) #(289 'NOOPSEQUENCE' 161) #(289 'NOOPT' 162) #(289 'NOOPTIMIZE' 163) #(289 'NOOPTIONS' 164) #(289 'NOP' 165) #(289 'NOPFD' 166) #(289 'NOPROLOG' 167) #(289 'NORENT' 168) #(289 'NOS' 169) #(289 'NOSEP' 170) #(289 'NOSEPARATE' 171) #(289 'NOSEQ' 172) #(289 'NOSEQUENCE' 173) #(289 'NOSOURCE' 174) #(289 'NOSPIE' 175) #(289 'NOSQL' 176) #(289 'NOSQLC' 177) #(289 'NOSQLCCSID' 178) #(289 'NOSSR' 179) #(289 'NOSSRANGE' 180) #(289 'NOSTDTRUNC' 181) #(289 'NOTERM' 182) #(289 'NOTERMINAL' 183) #(289 'NOTEST' 184) #(289 'NOTHREAD' 185) #(289 'NOTRIG' 186) #(289 'NOVBREF' 187) #(289 'NOWD' 188) #(289 'NOWORD' 189) #(289 'NOX' 190) #(289 'NOXREF' 191) #(289 'NOZWB' 192) #(289 'NS' 193) #(289 'NSEQ' 194) #(289 'NSYMBOL' 195) #(289 'NUM' 196) #(289 'NUMBER' 197) #(289 'NUMPROC' 198) #(289 'OBJ' 199) #(289 'OBJECT' 200) #(289 'OF' 201) #(289 'OFF' 202) #(289 'OFFSET' 203) #(289 'ON' 204) #(289 'OP' 205) #(289 'OPMARGINS' 206) #(289 'OPSEQUENCE' 207) #(289 'OPT' 208) #(289 'OPTFILE' 209) #(289 'OPTIMIZE' 210) #(289 'OPTIONS' 211) #(289 'OUT' 212) #(289 'OUTDD' 213) #(289 'PFD' 214) #(289 'PGMN' 215) #(289 'PGMNAME' 216) #(289 'PPTDBG' 217) #(289 'PROCESS' 218) #(289 'PROLOG' 219) #(289 'QUOTE' 220) #(289 'RENT' 221) #(289 'REPLACE' 222) #(289 'REPLACING' 223) #(289 'RMODE' 224) #(289 'SEP' 225) #(289 'SEPARATE' 226) #(289 'SEQ' 227) #(289 'SEQUENCE' 228) #(289 'SHORT' 229) #(289 'SIZE' 230) #(289 'SKIP1' 231) #(289 'SKIP2' 232) #(289 'SKIP3' 233) #(289 'SOURCE' 234) #(289 'SP' 235) #(289 'SPACE' 236) #(289 'SPIE' 237) #(289 'SQL' 238) #(289 'SQLC' 239) #(289 'SQLCCSID' 240) #(289 'SQLIMS' 241) #(289 'SS' 242) #(289 'SSR' 243) #(289 'SSRANGE' 244) #(289 'STD' 245) #(289 'SUPPRESS' 246) #(289 'SYSEIB' 247) #(289 'SZ' 248) #(289 'TERM' 249) #(289 'TERMINAL' 250) #(289 'TEST' 251) #(289 'THREAD' 252) #(289 'TITLE' 253) #(289 'TRIG' 254) #(289 'TRUNC' 255) #(289 'UE' 256) #(289 'UPPER' 257) #(289 'VBREF' 258) #(289 'WD' 259) #(289 'WORD' 260) #(289 'XMLPARSE' 261) #(289 'XMLSS' 262) #(289 'XOPTS' 263) #(289 'XP' 264) #(289 'XREF' 265) #(289 'YEARWINDOW' 266) #(289 'YW' 267) #(289 'ZWB' 268))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
CobolPPScanner >> NEWLINEId [
	^ 291
]

{ #category : 'generated' }
CobolPPScanner >> emptySymbolTokenId [
	^ 363
]

{ #category : 'generated' }
CobolPPScanner >> errorTokenId [
	^ 364
]

{ #category : 'generated' }
CobolPPScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'initialization' }
CobolPPScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : 'generated' }
CobolPPScanner >> scan1 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan2 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	true ] whileTrue
]

{ #category : 'generated' }
CobolPPScanner >> scan10 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(290).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan11 [
	[ self recordMatch: #(289).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan2 [
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
															currentCharacter == $" ifTrue: [ ^ self scan1 ].
															currentCharacter == Character tab
																or: [ currentCharacter == Character space ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan3 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan4 [
	self recordMatch: #(287).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan5 [
	[ self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan6 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan7 ].
	currentCharacter == $' ifTrue: [ ^ self scan8 ].
	true ] whileTrue
]

{ #category : 'generated' }
CobolPPScanner >> scan6 [
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
															currentCharacter == $' ifTrue: [ ^ self scan5 ].
															currentCharacter == Character tab
																or: [ currentCharacter == Character space ] ] whileTrue ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan7 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan8 [
	self recordMatch: #(287).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scan9 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(289).
			self step.
			('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForToken [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(291) ].
	currentCharacter == Character cr ifTrue: [ ^ self scanForTokenX20 ].
	^ self scanForTokenX23
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX1 [
	self recordMatch: #(283 289 293).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(287) ].
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
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(287) ].
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX10 [
	self recordMatch: #(275 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX11 [
	self recordMatch: #(274 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX12 [
	self recordMatch: #(273 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX13 [
	self recordMatch: #(272 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX14 [
	self recordMatch: #(271 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX15 [
	self recordMatch: #(293).
	self step.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('Ll' includes: currentCharacter)
				ifTrue: [ self step.
					('Ss' includes: currentCharacter)
						ifTrue: [ self step.
							('Ee' includes: currentCharacter)
								ifTrue: [ ^ self recordAndReportMatch: #(1) ] ].
					^ self reportLastMatch ].
			('Nn' includes: currentCharacter)
				ifTrue: [ self step.
					('Dd' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(2) ] ].
			^ self reportLastMatch ].
	('Ii' includes: currentCharacter)
		ifTrue: [ self step.
			('Ff' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(3) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX16 [
	self recordMatch: #(292 293).
	self step.
	(currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ])
		ifTrue: [ [ self recordMatch: #(292).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character newPage
						or: [ currentCharacter == Character space or: [ currentCharacter == $; ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX17 [
	self recordMatch: #(293).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan6 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan7 ].
	currentCharacter == $' ifTrue: [ ^ self scan8 ].
	^ self scan5
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX18 [
	self recordMatch: #(293).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan2 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
	currentCharacter == $" ifTrue: [ ^ self scan4 ].
	^ self scan1
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX19 [
	self recordMatch: #(293).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(286) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX2 [
	self recordMatch: #(288 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(288 289).
			self step.
			currentCharacter == $. ifTrue: [ ^ self scan10 ].
			currentCharacter isDigit ] whileTrue ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX20 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(291) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX21 [
	(currentCharacter <= $@
		or: [ (currentCharacter between: $[ and: $`) or: [ currentCharacter >= ${ ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(293) ].
	true
		ifTrue: [ self recordMatch: #(289 293).
			self step.
			currentCharacter == $. ifTrue: [ ^ self scan10 ].
			('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX22 [
	('Ff' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX11 ].
	('Hh' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX10 ].
	('Ii' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX9 ].
	('Mm' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX8 ].
	('Nn' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX7 ].
	('Qq' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX6 ].
	('Ss' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX5 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX4 ].
	('Ww' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX3 ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1 ].
	(currentCharacter isSeparator or: [ currentCharacter == $; ])
		ifTrue: [ ^ self scanForTokenX16 ].
	^ self scanForTokenX21
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX23 [
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX18 ].
	currentCharacter == $$ ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX17 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(269 293) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(270 293) ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(284 293) ].
	currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(285 293) ].
	currentCharacter == $= ifTrue: [ ^ self scanForTokenX19 ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX2 ].
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX14 ].
	('Dd' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX13 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX12 ].
	^ self scanForTokenX22
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX3 [
	self recordMatch: #(282 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX4 [
	self recordMatch: #(281 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX5 [
	self recordMatch: #(280 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX6 [
	self recordMatch: #(279 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX7 [
	self recordMatch: #(278 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX8 [
	self recordMatch: #(277 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CobolPPScanner >> scanForTokenX9 [
	self recordMatch: #(276 289 293).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'private' }
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

{ #category : 'generated' }
CobolPPScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace)
]

{ #category : 'generated' }
CobolPPScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
