Class {
	#name : #MyCircleTest,
	#superclass : #TestCase,
	#category : #shapes
}

{ #category : #'as yet unclassified' }
MyCircleTest >> testarea [
	|c|
	c := MyCircle radius:1.
	self assert: c area equals:3.14.
]

{ #category : #'as yet unclassified' }
MyCircleTest >> testperimetre [
	|c|
	c := MyCircle radius:1.
	self assert: c perimetre equals:6.28.
]

{ #category : #'as yet unclassified' }
MyCircleTest >> testprintOn [
	|c|
	c := MyCircle radius:1.
	self assert: c asString equals:'(1)'.
]
