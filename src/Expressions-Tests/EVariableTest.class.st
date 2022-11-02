Class {
	#name : #EVariableTest,
	#superclass : #TestCase,
	#category : #'Expressions-Tests'
}

{ #category : #tests }
EVariableTest >> testEvaluateXplusY [
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EAddition left: ep1 right: ep2.
	self assert: (add evaluateWith: { #x -> 10 . #y -> 2 } asDictionary) equals: 12.
	self assert: (add evaluateWith: { #x -> 10 . #y -> 12 } asDictionary) equals: 22
]

{ #category : #tests }
EVariableTest >> testPrintWith [
	self assert: ((EVariable new id: #x) printWith: {#x -> 10} asDictionary) equals: '( x:10 )'
]

{ #category : #tests }
EVariableTest >> testPrinting [
	self assert: (EVariable new id: #x) printString equals: 'x'.
]

{ #category : #tests }
EVariableTest >> testValueOfx [
self assert: ((EVariable new id: #x) evaluateWith: {#x -> 10} asDictionary) equals: 10.
]

{ #category : #tests }
EVariableTest >> testValueOfxInNegation [
	self assert: ((EVariable id: #x) negated evaluateWith: {#x -> 10} asDictionary) equals: -10
]
