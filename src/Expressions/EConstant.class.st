Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> value: anInteger [
	^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> evaluate [
	^value
]

{ #category : #tests }
EConstant >> testEvaluate [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: (EAddition new right: ep1; left: ep2) evaluate equals: 8
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger
]
