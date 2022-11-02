Class {
	#name : #EConstant,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant >> evaluate [
	^value
]

{ #category : #arithmetic }
EConstant >> negated [
	^ ENegation new expression: self
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
