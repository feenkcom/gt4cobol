Class {
	#name : #IDCAMSScanner,
	#superclass : #SmaCCScanner,
	#category : #'GToolkit4Cobol-IDCAMS'
}

{ #category : #generated }
IDCAMSScanner >> emptySymbolTokenId [
	^ 19
]

{ #category : #generated }
IDCAMSScanner >> errorTokenId [
	^ 20
]

{ #category : #generated }
IDCAMSScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : #generated }
IDCAMSScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
IDCAMSScanner >> scanForToken [
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self scanForTokenX5
]

{ #category : #generated }
IDCAMSScanner >> scanForTokenX1 [
	self recordMatch: #(5).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ [ self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(7) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan1 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			^ self reportLastMatch ].
	((currentCharacter between: $- and: $.)
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(5).
			self step.
			(currentCharacter between: $- and: $.)
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
IDCAMSScanner >> scanForTokenX2 [
	[ self recordMatch: #(5).
	self step.
	(currentCharacter between: $- and: $.)
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] ] whileTrue
]

{ #category : #generated }
IDCAMSScanner >> scanForTokenX3 [
	[ self recordMatch: #(6).
	self step.
	currentCharacter == Character lf or: [ currentCharacter == Character cr ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
IDCAMSScanner >> scanForTokenX4 [
	[ self recordMatch: #(7).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
IDCAMSScanner >> scanForTokenX5 [
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scanForTokenX4 ].
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scanForTokenX3 ].
	(currentCharacter == $.
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ self scanForTokenX2 ].
	^ self reportLastMatch
]

{ #category : #generated }
IDCAMSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil #whitespace)
]

{ #category : #generated }
IDCAMSScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
