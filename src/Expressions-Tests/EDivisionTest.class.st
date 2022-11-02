Class {
	#name : #EDivisionTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
EDivisionTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := (EConstant new value: 3).
	ep2 := (EConstant new value: 6).
	self assert: ((EDivision new right: ep1; left: ep2) evaluateWith: Dictionary new) equals: 2
]

{ #category : #tests }
EDivisionTest >> testEvaluateNegated [
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EDivision new right: ep1; left: ep2) negated evaluateWith: Dictionary new) equals: -3/5
]

{ #category : #tests }
EDivisionTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EDivision left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 5/3
]

{ #category : #tests }
EDivisionTest >> testPrinting [
	self assert: EDivision fiveOfAThree negated printString equals: '- ( 5 / 3 )'
]
