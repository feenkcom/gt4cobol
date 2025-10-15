Class {
	#name : 'BMSScanner',
	#superclass : 'SmaCCScanner',
	#category : 'GToolkit4Cobol-BMS-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'BMS-Parser'
}

{ #category : 'as yet unclassified' }
BMSScanner >> continuation [
	^ self comment
]

{ #category : 'generated' }
BMSScanner >> emptySymbolTokenId [
	^ 21
]

{ #category : 'generated' }
BMSScanner >> errorTokenId [
	^ 22
]

{ #category : 'as yet unclassified' }
BMSScanner >> id [
	| column |
	column := stream columnNumberFor: start.
	column < 9
		ifTrue: [ matchActions := {self nameId.
					self idId}.
			^ self createTokenFor: outputStream contents ].
	column < 16
		ifTrue: [ matchActions := {self macroId.
					self idId}.
			^ self createTokenFor: outputStream contents ].
	^ self createTokenFor: outputStream contents
]

{ #category : 'generated' }
BMSScanner >> idId [
	^ 7
]

{ #category : 'generated' }
BMSScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'generated' }
BMSScanner >> macroId [
	^ 19
]

{ #category : 'generated' }
BMSScanner >> nameId [
	^ 20
]

{ #category : 'initialize-release' }
BMSScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : 'generated' }
BMSScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(6).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
BMSScanner >> scan2 [
	[ self recordMatch: #(7).
	self step.
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
	currentCharacter == $&
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan3 [
	[ self step.
	'-_' includes: currentCharacter ] whileTrue.
	(currentCharacter == $&
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan4 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(6).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
BMSScanner >> scan5 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(5).
			self step.
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan6 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan6 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(5).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan7 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(5).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan8 [
	[ self recordMatch: #(5).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scan9 [
	[ self recordMatch: #(5 7).
	self step.
	currentCharacter isDigit ] whileTrue.
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
	(currentCharacter == $&
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self scanForTokenX6
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX1 [
	[ self recordMatch: #(5 7).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	('-_' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(7).
			self step.
			currentCharacter == $+ ifTrue: [ ^ self scan7 ].
			currentCharacter == $-
				ifTrue: [ self step.
					currentCharacter isDigit ifTrue: [ ^ self scan9 ].
					('-_' includes: currentCharacter) ifTrue: [ ^ self scan3 ].
					(currentCharacter == $&
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan2 ].
					^ self reportLastMatch ].
			currentCharacter == $_ ifTrue: [ ^ self scan3 ].
			currentCharacter isDigit ifTrue: [ ^ self scan9 ] ].
	(currentCharacter == $&
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX2 [
	[ self recordMatch: #(8).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX3 [
	self recordMatch: #(9).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX4 [
	[ self recordMatch: #(10).
	self step.
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX5 [
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ifTrue: [ ^ self scan8 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> scanForTokenX6 [
	currentCharacter == $* ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $. ifTrue: [ ^ self scan5 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX1 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scanForTokenX4 ].
	(currentCharacter == $&
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BMSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil #id #comment #continuation #whitespace)
]

{ #category : 'generated' }
BMSScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
