Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EDivision class >> fiveOfAThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2
]

{ #category : #'public access' }
EDivision >> evaluateWith: anObject [

	^ (left evaluateWith: anObject)
	  / (right evaluateWith: anObject)
]

{ #category : #'public access' }
EDivision >> operatorString [
	^ ' / '
]
