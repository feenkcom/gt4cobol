Extension { #name : #FAMIXSourceLanguage }

{ #category : #'*GToolkit4Cobol' }
FAMIXSourceLanguage >> addExpanderFor: association in: text [
	| to |
	(association isKindOf: FAMIXAssociation) ifFalse: [ ^ self ].
	to := association expandTo.
	((to isKindOf: Collection) and: [ to size = 1 ]) ifTrue: [ to := to anyOne ].
	(to isNil or: [ association sourceAnchor isNil ]) ifTrue: [ ^ self ].
	(text from: association sourceAnchor endPos to: association sourceAnchor endPos)
		attribute: (BrGlamorousTriangleExpanderTextAttribute new
				attributesCreatingBlock: [ BrTextAdornmentDynamicAttribute new
						beAppend;
						stencil: [ | pane view |
							pane := BrVerticalPane new
									height: 300;
									aptitude: BrShadowAptitude
											+ (BrGlamorousWithVerticalResizerAptitude new
													beBottom;
													yourself);
									background: Color white;
									margin: (BlInsets all: 10);
									constraintsDo: [ :c | 
										c textFlow pushLine.
										c horizontal matchParent ].
							view := to gtCobolExpanderView.
							((to isKindOf: FAMIXSourcedEntity) and: [ to containerFiles notEmpty ])
								ifTrue: [ pane
										addChild: (BrButton new
												aptitude: BrGlamorousButtonRectangularAptitude
														+ (BrGlamorousButtonLabelAptitude new selectedColor: Color black);
												action: [ pane phlow spawnObject: to containerFiles first ];
												alignCenterLeft;
												label: to containerFiles first fullName) ].
							pane
								addChild: (view asElement
										constraintsDo: [ :c | 
											c horizontal matchParent.
											c vertical matchParent ]) ] ])
]

{ #category : #'*GToolkit4Cobol' }
FAMIXSourceLanguage >> addInspectButtonFor: anEntity in: text [
	| pos |
	((anEntity isKindOf: FAMIXSourcedEntity) and: [ anEntity sourceAnchor notNil ])
		ifFalse: [ ^ self ].
	pos := anEntity gtInspectButtonPosition.
	(text from: pos to: pos)
		attribute: (GtButtonAttribute new
				beAppend;
				stencil: [ | button |
					button := BrButton new.
					button
						aptitude: (BrLazyStyleCommonAptitude new
								default: [ :aStyle | aStyle background: BrGlamorousColors defaultButtonBorderColor ];
								hovered: [ :aStyle | aStyle background: BrGlamorousColors hoveredButtonBorderColor ]);
						size: 8 @ 8;
						geometry: BlEllipseGeometry new;
						margin: (BlInsets left: 2 right: 2);
						action: [ :aButtonElement :aButtonModel :anEvent | button phlow spawnObject: anEntity ];
						yourself ])
]
