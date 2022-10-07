Class {
	#name : #MySquare,
	#superclass : #MyRectangle,
	#instVars : [
		'side'
	],
	#category : #shapes
}

{ #category : #initialization }
MySquare class >> side: aNumber [
	|c|
	c :=MySquare new.
	c side: aNumber.
	c width: aNumber.
	c length: aNumber.
	^c
]

{ #category : #initialization }
MySquare >> initialize [
	super initialize.
	width :=1.
	side:=1.
	length:=1.
]

{ #category : #printing }
MySquare >> printOn: aStream [
	aStream
		nextPut: $(;
		nextPutAll: side asString;
		nextPut: $,;
		nextPutAll: side asString;
		nextPut: $).
]

{ #category : #initialization }
MySquare >> side [ 
	^side
]

{ #category : #initialization }
MySquare >> side: aNumber [
	side:=aNumber.
]
