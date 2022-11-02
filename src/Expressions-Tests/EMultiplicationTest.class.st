Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
EMultiplicationTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EMultiplication new right: ep1; left: ep2) evaluateWith: Dictionary new) equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateNegated [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EMultiplication new right: ep1; left: ep2) negated evaluateWith: Dictionary new) equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EMultiplication left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testPrinting [
	self assert: (EMultiplication fiveTimesThree negated printWith: Dictionary new) equals: '- ( 5 * 3 )'
]
