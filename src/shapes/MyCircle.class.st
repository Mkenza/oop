Class {
	#name : #MyCircle,
	#superclass : #MyShape,
	#instVars : [
		'radius'
	],
	#category : #shapes
}

{ #category : #accessing }
MyCircle class >> radius: aNumber [
	|c|
	c :=MyCircle new.
	c radius: aNumber.
	^c
]

{ #category : #accessing }
MyCircle >> area [
	^3.14*(radius**2)
]

{ #category : #initialization }
MyCircle >> initialize [
	super initialize.
	radius :=1.
]

{ #category : #accessing }
MyCircle >> perimetre [
	^2*(3.14*radius)
]

{ #category : #printing }
MyCircle >> printOn: aStream [
	aStream
		nextPut: $(;
		nextPutAll: radius asString;
		nextPut: $).
]

{ #category : #accessing }
MyCircle >> radius [
	^radius
]

{ #category : #accessing }
MyCircle >> radius: aNumber [
	radius:=aNumber
]
