Class {
	#name : #MyPoint,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'points_lines'
}

{ #category : #'as yet unclassified' }
MyPoint class >> xs: firstNumber ys: secondNumber [ 
	|pt|
	pt := MyPoint new.
	pt x: firstNumber.
	pt y: secondNumber.
	^pt
]

{ #category : #initialization }
MyPoint >> initialize [ 
	super initialize.
	x:=0.
	y:=0.
]

{ #category : #accessing }
MyPoint >> printOn: aStream [ 
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: x asString;
		nextPut: $,;
		nextPutAll: y asString;
		nextPut: $).
]

{ #category : #accessing }
MyPoint >> x [
	^x
]

{ #category : #accessing }
MyPoint >> x: aNumber [ 
	x := aNumber 
]

{ #category : #accessing }
MyPoint >> y [
	^y
]

{ #category : #accessing }
MyPoint >> y: aNumber [ 
	y := aNumber 
]
