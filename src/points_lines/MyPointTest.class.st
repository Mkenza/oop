Class {
	#name : #MyPointTest,
	#superclass : #TestCase,
	#category : #'points_lines'
}

{ #category : #tests }
MyPointTest >> testInitialize [ 
	
	| pt |
	pt := MyPoint new.
	self assert: pt x equals: 0.
	self assert: pt y equals: 0.
]

{ #category : #tests }
MyPointTest >> testPrintOn [

	|pt|
	pt := MyPoint xs: 6 ys:7.
	self assert: pt asString equals: 'a MyPoint(6,7)'.
]
