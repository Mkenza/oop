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
EPowerTest >> testEvaluateNegated [
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self assert: ((EPower new right: ep1; left: ep2) negated evaluateWith: Dictionary new) equals: -243
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
