Class {
	#name : #EPowerTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
EPowerTest >> testEvaluate [
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self assert: ((EPower new right: ep1; left: ep2) evaluateWith: Dictionary new) equals: 243
]

{ #category : #tests }
EPowerTest >> testEvaluateEvenPowerNegated [
 "(-3)**4 = 3**4 = 81"
	| ep1 ep2 |
	ep1 := EConstant value: 4.
	ep2 := EConstant constant3.
	self assert: ((EPower new left: ep2; right: ep1) evaluateWith: Dictionary new) equals: 81.
	self assert: ((EPower new left: ep2 negated; right: ep1) evaluateWith: Dictionary new) equals: 81
]

{ #category : #tests }
EPowerTest >> testEvaluateNegativePower [
	"3**(-5) = 1/(3**5) = 1/243"
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EPower new left: ep2; right: ep1 negated) evaluateWith: Dictionary new) equals: 1/243
]

{ #category : #tests }
EPowerTest >> testEvaluateOddPowerNegated [
 "(-3)**5 = -3**5 = - 243"
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EPower new left: ep2 negated; right: ep1) evaluateWith: Dictionary new) equals: -243
]

{ #category : #tests }
EPowerTest >> testEvaluateWithClassCreationMessage [
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EPower left: ep1 right: ep2) evaluateWith: Dictionary new) equals: 125
]

{ #category : #tests }
EPowerTest >> testPrintWith [
	self assert: (EPower fivePowerThree negated printWith: Dictionary new) equals: '- ( 5 ** 3 )'

]

{ #category : #tests }
EPowerTest >> testPrinting [
	self assert: EPower fivePowerThree negated printString equals: '- ( 5 ** 3 )'.

]
