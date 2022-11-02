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
	^ self new left: ep1 ; right: ep2
]

{ #category : #visiting }
EPower >> accept: aVisitor [
	^aVisitor visitPower: self
]

{ #category : #'public access' }
EPower >> operatorString [
	^ ' ** '
]
