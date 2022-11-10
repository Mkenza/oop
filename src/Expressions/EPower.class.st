Class {
	#name : #EPower,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EPower class >> fivePowerThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new term: ep1 power: ep2
]

{ #category : #'as yet unclassified' }
EPower class >> term: anEExpression power:  anEExpression2 [
	^ self new term: anEExpression power:  anEExpression2
]

{ #category : #visiting }
EPower >> accept: aVisitor [
	^aVisitor visitPower: self
]

{ #category : #'public access' }
EPower >> operatorString [
	^ ' ** '
]

{ #category : #'as yet unclassified' }
EPower >> power [
	^ right
]

{ #category : #'as yet unclassified' }
EPower >> term [
	^left
]

{ #category : #'as yet unclassified' }
EPower >> term: aFirstValue power: aValue [
	right := aValue.
	left := aFirstValue.
]
