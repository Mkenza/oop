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
EPrinterVisitorTest >> testVisitAdditionReturnsDivisionResult [
| expression result |
expression := EDivision  numerator: (EConstant value: 7) denominator: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 / 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitAdditionReturnsMultiplicationResult [
| expression result |
expression := EMultiplication left: (EConstant value: 7) right: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 * 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitAdditionReturnsNegationResult [
	| expression result |
	expression := (EConstant value: 7) negated.
	result := expression accept: EPrinterVisitor new.
	self assert: result equals: '- 7'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitAdditionReturnsPowerResult [
| expression result |
expression := EPower  left: (EConstant value: 7) right: (EConstant value: 2).
result := expression accept: EPrinterVisitor new.
self assert: result equals: '( 7 ** 2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testVisitConstantReturnsConstantValue [
	| constant result |
	constant := EConstant value: 5.
	result := constant accept: EPrinterVisitor new.
	self assert: result equals: '5'
]
