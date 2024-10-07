Class {
	#name : #CSDScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4Cobol-CSD-Parser'
}

{ #category : #'generated-initialization' }
CSDScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(2 'DEFINE' 1))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
CSDScanner >> emptySymbolTokenId [
	^ 17
]

{ #category : #generated }
CSDScanner >> errorTokenId [
	^ 18
]

{ #category : #generated }
CSDScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
CSDScanner >> scanForToken [
	scope == #value ifTrue: [ ^ self scanForTokenX1 ].
	scope == #default
		ifTrue: [ self step.
			currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(3) ].
			currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(4) ].
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue: [ [ self recordMatch: #(7).
					self step.
					currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
						whileTrue.
					^ self reportLastMatch ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ])
				ifTrue: [ [ self recordMatch: #(2).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CSDScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(5 6).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(5 6).
					self step.
					currentCharacter isDigit ] whileTrue.
					(currentCharacter <= $' or: [ currentCharacter >= $* ])
						ifTrue: [ [ self recordMatch: #(6).
							self step.
							currentCharacter <= $' or: [ currentCharacter >= $* ] ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			(currentCharacter <= $' or: [ currentCharacter >= $* ])
				ifTrue: [ [ self recordMatch: #(6).
					self step.
					currentCharacter <= $' or: [ currentCharacter >= $* ] ] whileTrue ].
			^ self reportLastMatch ].
	true
		ifTrue: [ [ self recordMatch: #(6).
			self step.
			currentCharacter <= $' or: [ currentCharacter >= $* ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CSDScanner >> tokenActions [
	^ #(nil nil nil nil nil nil #whitespace)
]

{ #category : #generated }
CSDScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
