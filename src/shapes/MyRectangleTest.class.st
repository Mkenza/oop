Class {
	#name : #MyRectangleTest,
	#superclass : #TestCase,
	#category : #shapes
}

{ #category : #'as yet unclassified' }
MyRectangleTest >> testarea [ 	
	 |c|
	c:=MyRectangle width: 10 length: 5.
	self assert: c area equals:50.
]

{ #category : #'as yet unclassified' }
MyRectangleTest >> testperimetre [	
	 |c|
	c:=MyRectangle width: 10 length: 5.
	self assert: c perimetre equals:30.
]

{ #category : #'as yet unclassified' }
MyRectangleTest >> testprintOn [
	 |c|
	c:=MyRectangle width: 10 length: 5.
	self assert: c asString equals: '(10,5)'.
]
