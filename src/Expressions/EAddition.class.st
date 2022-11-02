Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	^ self new left: ep1 ; right: ep2
]

{ #category : #'public access' }
EAddition >> evaluateWith: anObject [

	^ (left evaluateWith: anObject)
	  + (right evaluateWith: anObject)
]

{ #category : #'public access' }
EAddition >> operatorString [
	^ ' + '
]
