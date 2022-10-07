Class {
	#name : #MySquareTest,
	#superclass : #TestCase,
	#category : #shapes
}

{ #category : #'as yet unclassified' }
MySquareTest >> testarea [ 	
	 |c|
	c:=MySquare side: 5.
	self assert: c area equals:25.
]

{ #category : #'as yet unclassified' }
MySquareTest >> testperimetre [
	 |c|
	c:=MySquare side: 5.
	self assert: c perimetre equals:20.
]

{ #category : #'as yet unclassified' }
MySquareTest >> testprintOn [
	|c|
	c := MySquare side:1.
	self assert: c asString equals:'(1,1)'.
]
