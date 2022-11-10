Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
EPrinterVisitorTest >> testVisitAdditionReturnsAdditionResult [
| expression result |
expression := EAddition
left: (EConstant value: 7)
right: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 + 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitConstantReturnsConstantValue [
	| constant result |
	constant := EConstant value: 5.
	result := constant accept: EPrinterVisitor new.
	self assert: result equals: '5'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitDivisionReturnsDivisionResult [
| expression result |
expression := EDivision  numerator: (EConstant value: 7) denominator: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 / 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [
| expression result |
expression := EMultiplication left: (EConstant value: 7) right: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 * 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitNegationReturnsNegationResult [
	| expression result |
	expression := (EConstant value: 7) negated.
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: '- 7'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitPowerReturnsPowerResult [
| expression result |
expression := EPower  term: (EConstant value: 7) power: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 ** 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitVariableReturnsVariableValue [
	| expression result visitor |
	expression := EVariable id: #answerToTheQuestion.
	visitor := EPrinterVisitor new.
	visitor at: #answerToTheQuestion put: 42.
	result := expression accept: visitor.
	self assert: result equals: 'answerToTheQuestion'
]
