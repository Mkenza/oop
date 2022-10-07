Class {
	#name : #MyLineTest,
	#superclass : #TestCase,
	#category : #'points_lines'
}

{ #category : #tests }
MyLineTest >> testPrintOn [
	|l pt1 pt2|
	pt1 := MyPoint xs: 6 ys:7.
	pt2 := MyPoint xs: 6 ys:7.
	l := MyLine begin: pt1 end: pt2.
	self assert: l asString equals: 'a MyLine(6,7)-->(6,7)'.
]

{ #category : #'as yet unclassified' }
MyLineTest >> testgradient [
	|l pt1 pt2|
	pt1 := MyPoint xs: 6 ys:7.
	pt2 := MyPoint xs: 5 ys:1.
	l := MyLine begin: pt1 end: pt2.
	self assert: (l gradient) equals: 6.
	
]

{ #category : #'as yet unclassified' }
MyLineTest >> testgradienthorizontal [
	|l pt1 pt2|
	pt1 := MyPoint xs: 6 ys:7.
	pt2 := MyPoint xs: 5 ys:7.
	l := MyLine begin: pt1 end: pt2.
	self assert: (l gradient) equals: 0.
	
]

{ #category : #'as yet unclassified' }
MyLineTest >> testgradientinvariance [
	|l l2 pt1 pt2|
	pt1 := MyPoint xs: 6 ys:7.
	pt2 := MyPoint xs: 5 ys:9.
	l := MyLine begin: pt1 end: pt2.
	l2 := MyLine begin: pt2 end: pt1.
	self assert: (l gradient) equals: (l2 gradient).
	
]

{ #category : #'as yet unclassified' }
MyLineTest >> testinitialize [

	|l|
	l:= MyLine new.

	self assert: l begin x equals: 0.
	self assert: l end x equals: 0.
	self assert: l begin y equals: 0.
	self assert: l end y equals: 0.
]

{ #category : #'as yet unclassified' }
MyLineTest >> testlength [
	|l pt1 pt2|
	pt1 := MyPoint xs: 6 ys:7.
	pt2 := MyPoint xs: 5 ys:1.
	l := MyLine begin: pt1 end: pt2.
	self assert: (l length) equals: 7.
	
]
