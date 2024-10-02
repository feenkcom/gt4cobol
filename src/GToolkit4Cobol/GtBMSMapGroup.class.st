Class {
	#name : #GtBMSMapGroup,
	#superclass : #MooseGroup,
	#category : #'GToolkit4Cobol-Model'
}

{ #category : #'as yet unclassified' }
GtBMSMapGroup >> gtScreensFor: aView [
	<gtView>
	^ aView list 
		title: 'Screens';
		priority: -1;
		items: [ self ];
		itemStencil: [ :each | BrVerticalPane new fitContent];
		itemDataBinder: [ :pane :each | pane removeChildren; addChild: (each asElement) ]
]
