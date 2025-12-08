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
	#(#(12 'ELSE' 10) #(12 'ENDIF' 11) #(12 'IF' 8) #(12 'PEND' 7) #(12 'PROC' 6) #(12 'THEN' 9) #(13 'ELSE' 10) #(13 'ENDIF' 11) #(13 'IF' 8) #(13 'PEND' 7) #(13 'PROC' 6) #(13 'THEN' 9))
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
	^ 56
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
JCLScanner >> eolId [
	^ 3
]

{ #category : 'generated' }
JCLScanner >> errorTokenId [
	^ 57
]

{ #category : 'initialize-release' }
JCLScanner >> initialize [
	super initialize.
	self scope: #startOfLine
]

{ #category : 'private' }
JCLScanner >> inputCharacter [
	| eol position atEnd |
	matchActions := nil.
	eol := String crlf.
	[ [ (eol includes: currentCharacter) or: [ stream atEnd ] ]
		whileFalse: [ self step ].
	position := self position.
	[ (eol includes: currentCharacter) and: [ stream atEnd not ] ]
		whileTrue: [ self step ].
	atEnd := stream atEnd.
	(atEnd
		or: [ currentCharacter = $/
				and: [ self step.
					currentCharacter = $/
						ifTrue: [ self step.
							('*$#@' includes: currentCharacter)
								or: [ currentCharacter isAlphaNumeric ] ]
						ifFalse: [ currentCharacter = $*
								ifTrue: [ self step.
									currentCharacter = $  or: [ eol includes: currentCharacter ] ]
								ifFalse: [ false ] ] ] ])
		ifTrue: [ atEnd
				ifFalse: [ outputStream
						position: (outputStream position - (self position - position + 1) max: 0).
					self position: position - 1 ].
			^ self recordAndReportMatch: {self inputId} ] ] repeat
]

{ #category : 'generated' }
JCLScanner >> inputId [
	^ 55
]

{ #category : 'generated' }
JCLScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'generated' }
JCLScanner >> nameId [
	^ 13
]

{ #category : 'initialize-release' }
JCLScanner >> on: aStream [
	super on: (SmaCCLineNumberStream on: aStream)
]

{ #category : 'generated' }
JCLScanner >> scan1 [
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan3 ].
	currentCharacter == $' ifTrue: [ ^ self scan4 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $, ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $. ifTrue: [ ^ self scan7 ].
	currentCharacter == $< ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $> ifTrue: [ ^ self scan1X8 ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X2 ].
	^ self scan1X9
]

{ #category : 'generated' }
JCLScanner >> scan10 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter == Character lf
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	true
		ifTrue: [ [ self recordMatch: #(25).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan11 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan12 [
	[ self recordMatch: #(5).
	self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : 'generated' }
JCLScanner >> scan13 [
	[ self recordMatch: #(5).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character space ] whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan13 ].
			^ self reportLastMatch ].
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X1 [
	[ self recordMatch: #(13 14).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan3 ].
	currentCharacter isDigit ] whileTrue.
	((currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $@ and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X2 [
	[ self recordMatch: #(13 14).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan3 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X1 ].
	currentCharacter isDigit ] whileTrue.
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $@ and: $Z)
				or: [ currentCharacter between: $a and: $z ] ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X3 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			((currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ [ self recordMatch: #(23).
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
	self recordMatch: #(19).
	self step.
	currentCharacter == Character space ifTrue: [ ^ self scan6 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X5 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(14).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(14).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X6 [
	[ self recordMatch: #(4).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X7 [
	self recordMatch: #(18).
	self step.
	(currentCharacter between: $= and: $>)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan1X9 [
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X6 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter between: $+ and: $-) ifTrue: [ ^ self scan1X5 ].
	((currentCharacter between: $# and: $$)
		or: [ (currentCharacter between: $@ and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(12 13).
			self step.
			currentCharacter == $& ifTrue: [ ^ self scan3 ].
			(currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan2 [
	[ self recordMatch: #(3).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character space ] whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan3 [
	[ self step.
	currentCharacter == $& ] whileTrue.
	((currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ [ self recordMatch: #(22).
			self step.
			(currentCharacter between: $# and: $$)
				or: [ currentCharacter == $.
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $@ and: $Z)
										or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan4 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(15).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan4 ].
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
JCLScanner >> scan5 [
	[ self step.
	currentCharacter == Character space ifTrue: [ ^ self scan6 ].
	currentCharacter == $/
		ifTrue: [ self step.
			currentCharacter == $/
				ifTrue: [ self step.
					currentCharacter == Character space
						ifTrue: [ [ self recordMatch: #(19).
							self step.
							currentCharacter == Character space ] whileTrue ] ].
			^ self reportLastMatch ].
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan6 [
	[ self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan7 [
	[ self recordMatch: #(13).
	self step.
	currentCharacter == $& ifTrue: [ ^ self scan3 ].
	(currentCharacter between: $# and: $$)
		or: [ currentCharacter == $.
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $@ and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan8 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character space ] whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scan9 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character space
		ifTrue: [ [ self step.
			currentCharacter == Character space ] whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
JCLScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #star
		ifTrue: [ self step.
			^ self recordAndReportMatch: #(24) ].
	scope == #startOfLine
		ifTrue: [ self step.
			currentCharacter == $/
				ifTrue: [ self step.
					currentCharacter == $* ifTrue: [ ^ self scan8 ].
					currentCharacter == $/
						ifTrue: [ self recordMatch: #(1).
							self step.
							currentCharacter == Character space ifTrue: [ ^ self scan11 ].
							currentCharacter == $* ifTrue: [ ^ self scan12 ].
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan10 ] ] ].
			^ self reportLastMatch ].
	scope == #startOfLineAfterSeparator
		ifTrue: [ self step.
			currentCharacter == $/
				ifTrue: [ self step.
					currentCharacter == $* ifTrue: [ ^ self scan8 ].
					currentCharacter == $/
						ifTrue: [ self recordMatch: #(1).
							self step.
							currentCharacter == Character space
								ifTrue: [ self recordMatch: #(2).
									self step.
									currentCharacter == Character space ifTrue: [ ^ self scan11 ].
									(currentCharacter == Character lf
										or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan10 ].
									^ self reportLastMatch ].
							currentCharacter == $* ifTrue: [ ^ self scan12 ].
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan10 ] ] ] ].
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
	^ 12
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
	^ #(nil nil nil #whitespace #comment nil nil nil nil nil nil #statementName nil nil nil nil nil nil nil nil nil nil nil #inputCharacter #endOfFile #endOfInput)
]

{ #category : 'generated' }
JCLScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
