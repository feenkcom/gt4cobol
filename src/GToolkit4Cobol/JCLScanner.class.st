Class {
	#name : 'JCLScanner',
	#superclass : 'SmaCCScanner',
	#category : 'GToolkit4Cobol-JCL-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'JCL-Parser'
}

{ #category : 'generated-initialization' }
JCLScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(7 'PEND' 6) #(7 'PROC' 5) #(8 'PEND' 6) #(8 'PROC' 5))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'private' }
JCLScanner >> columnPosition [
	^ stream columnNumber
]

{ #category : 'generated' }
JCLScanner >> emptySymbolTokenId [
	^ 39
]

{ #category : 'private' }
JCLScanner >> endOfFile [
	^ self comment
]

{ #category : 'private' }
JCLScanner >> endOfInput [
	^ self comment
]

{ #category : 'generated' }
JCLScanner >> errorTokenId [
	^ 40
]

{ #category : 'initialize-release' }
JCLScanner >> initialize [
	super initialize.
	self scope: #startOfLine
]

{ #category : 'private' }
JCLScanner >> inputCharacter [
	| eol position |
	matchActions := nil.
	eol := String crlf.
	[ [ eol includes: currentCharacter ] whileFalse: [ self step ].
	position := self position.
	[ eol includes: currentCharacter ] whileTrue: [ self step ].
	(currentCharacter = $/
		and: [ self step.
			currentCharacter = $/
				ifTrue: [ self step.
					('*$#@' includes: currentCharacter) or: [ currentCharacter isAlphaNumeric ] ]
				ifFalse: [ currentCharacter = $*
						ifTrue: [ self step.
							currentCharacter = $  or: [ eol includes: currentCharacter ] ]
						ifFalse: [ false ] ] ])
		ifTrue: [ outputStream
				position: (outputStream position - (self position - position + 1) max: 0).
			self position: position - 1.
			^ self recordAndReportMatch: {self inputId} ] ] repeat
]

{ #category : 'generated' }
JCLScanner >> inputId [
	^ 38
]

{ #category : 'generated' }
JCLScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'generated' }
JCLScanner >> nameId [
	^ 8
]

{ #category : 'initialize-release' }
JCLScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : 'generated' }
JCLScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $& ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan3 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $, ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $. ifTrue: [ ^ self scan7 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self scan1X8
]

{ #category : 'generated' }
JCLScanner >> scan1X1 [
	[ self recordMatch: #(8 9).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit ] whileTrue.
	((currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $@ and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X2 [
	[ self recordMatch: #(8 9).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan2 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X1 ].
	currentCharacter isDigit ] whileTrue.
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $@ and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X3 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			((currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					(currentCharacter between: $# and: $$)
						or: [ currentCharacter == $.
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $@ and: $Z)
												or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X4 [
	self recordMatch: #(13).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan4 ].
	currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character lf ifTrue: [ ^ self scan4 ].
			currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
			currentCharacter == Character space ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X5 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(9).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(9).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X6 [
	[ self recordMatch: #(3).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X7 [
	self recordMatch: #(2).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X8 [
	currentCharacter isDigit ifTrue: [ ^ self scan1X2 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X6 ].
	(currentCharacter between: $+ and: $-) ifTrue: [ ^ self scan1X5 ].
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $@ and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(7 8).
			self step.
			currentCharacter == $& ifTrue: [ ^ self scan2 ].
			(currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan2 [
	self step.
	((currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ [ self recordMatch: #(16).
			self step.
			(currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan3 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(10).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
JCLScanner >> scan4 [
	self step.
	currentCharacter == $/ ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan5 [
	self step.
	currentCharacter == $/
		ifTrue: [ self step.
			currentCharacter == Character space
				ifTrue: [ [ self recordMatch: #(13).
					self step.
					currentCharacter == Character space ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan6 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan4 ].
	currentCharacter == $/ ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan7 [
	[ self recordMatch: #(8).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan2 ].
	(currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #star
		ifTrue: [ self step.
			^ self recordAndReportMatch: #(18) ].
	scope == #startOfLine
		ifTrue: [ self step.
			currentCharacter == $/
				ifTrue: [ self step.
					currentCharacter == $*
						ifTrue: [ [ self recordMatch: #(20).
							self step.
							currentCharacter == Character lf
								ifTrue: [ ^ self recordAndReportMatch: #(20) ].
							currentCharacter == Character cr
								ifTrue: [ self recordMatch: #(20).
									self step.
									currentCharacter == Character lf
										ifTrue: [ ^ self recordAndReportMatch: #(20) ].
									^ self reportLastMatch ].
							currentCharacter == Character space ] whileTrue.
							^ self reportLastMatch ].
					currentCharacter == $/
						ifTrue: [ self recordMatch: #(1).
							self step.
							currentCharacter == Character space
								ifTrue: [ [ self step.
									currentCharacter == Character space ] whileTrue.
									(currentCharacter == Character lf
										or: [ currentCharacter == Character cr ])
										ifTrue: [ [ self recordMatch: #(19).
											self step.
											true ] whileTrue ].
									^ self reportLastMatch ].
							currentCharacter == $*
								ifTrue: [ [ self recordMatch: #(4).
									self step.
									currentCharacter == Character lf
										ifTrue: [ ^ self recordAndReportMatch: #(4) ].
									currentCharacter == Character cr
										ifTrue: [ self recordMatch: #(4).
											self step.
											currentCharacter == Character lf
												ifTrue: [ ^ self recordAndReportMatch: #(4) ].
											^ self reportLastMatch ].
									true ] whileTrue ].
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ])
								ifTrue: [ [ self recordMatch: #(19).
									self step.
									true ] whileTrue ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'private' }
JCLScanner >> statementName [
	| column |
	column := stream columnNumberFor: start.
	matchActions := {column = 3
				ifTrue: [ self statementNameId ]
				ifFalse: [ self nameId ]}.
	^ self createTokenFor: outputStream contents
]

{ #category : 'generated' }
JCLScanner >> statementNameId [
	^ 7
]

{ #category : 'private' }
JCLScanner >> step [
	[ super step.
	self columnPosition >= 74
		and: [ currentCharacter ~= $ 
				and: [ currentCharacter ~= Character cr and: [ currentCharacter ~= Character lf ] ] ] ]
		whileTrue
]

{ #category : 'generated' }
JCLScanner >> tokenActions [
	^ #(nil nil #whitespace #comment nil nil #statementName nil nil nil nil nil nil nil nil nil nil #inputCharacter #endOfFile #endOfInput)
]

{ #category : 'generated' }
JCLScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
