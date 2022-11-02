Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
ENegationTest >> testEvaluate [
	self assert:(ENegation new expression: (EConstant new value: 5)) evaluate equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassCreationMessage [
	self assert: (ENegation expression: (EConstant value: 5)) evaluate equals: -5
]

{ #category : #tests }
ENegationTest >> testNegationNegated [
	self assert: (EConstant new value: 6) negated negated evaluate equals: 6
]

{ #category : #tests }
ENegationTest >> testPrinting [
	self assert: (EConstant constant3 negated) printString equals: '- 3'
]