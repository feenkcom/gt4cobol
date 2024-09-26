Class {
	#name : #CobolConfigurationSectionNode,
	#superclass : #CobolProgramNode,
	#instVars : [
		'keywords',
		'period',
		'paragraphs'
	],
	#category : #'GToolkit4Cobol-Parser'
}

{ #category : #generated }
CobolConfigurationSectionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConfigurationSection: self
]

{ #category : #generated }
CobolConfigurationSectionNode >> compositeNodeVariables [
	^ #(#paragraphs)
]

{ #category : #generated }
CobolConfigurationSectionNode >> compositeTokenVariables [
	^ #(#keywords)
]

{ #category : #'generated-initialize-release' }
CobolConfigurationSectionNode >> initialize [
	super initialize.
	keywords := OrderedCollection new: 2.
	paragraphs := OrderedCollection new: 2.
]

{ #category : #generated }
CobolConfigurationSectionNode >> keywords [
	^ keywords
]

{ #category : #generated }
CobolConfigurationSectionNode >> keywords: anOrderedCollection [
	keywords := anOrderedCollection
]

{ #category : #generated }
CobolConfigurationSectionNode >> paragraphs [
	^ paragraphs
]

{ #category : #generated }
CobolConfigurationSectionNode >> paragraphs: anOrderedCollection [
	self setParents: self paragraphs to: nil.
	paragraphs := anOrderedCollection.
	self setParents: self paragraphs to: self
]

{ #category : #generated }
CobolConfigurationSectionNode >> period [
	^ period
]

{ #category : #generated }
CobolConfigurationSectionNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
CobolConfigurationSectionNode >> tokenVariables [
	^ #(#period)
]
