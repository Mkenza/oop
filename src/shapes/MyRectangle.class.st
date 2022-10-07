Class {
	#name : #MyRectangle,
	#superclass : #MyShape,
	#instVars : [
		'width',
		'length'
	],
	#category : #shapes
}

{ #category : #'as yet unclassified' }
MyRectangle class >> width: aNumber length: secNumber [
	|c|
	c :=MyRectangle new.
	c width: aNumber.
	c length: secNumber.
	^c
]

{ #category : #accessing }
MyRectangle >> area [
	^width*length
]

{ #category : #initialization }
MyRectangle >> initialize [
	super initialize.
	width :=1.
	length :=1.
]

{ #category : #accessing }
MyRectangle >> length [
	^length
]

{ #category : #accessing }
MyRectangle >> length: aNumber [
	length:=aNumber
]

{ #category : #accessing }
MyRectangle >> perimetre [
	^2*(width+length)
]

{ #category : #printing }
MyRectangle >> printOn: aStream [
	aStream
		nextPut: $(;
		nextPutAll: width asString;
		nextPut: $,;
		nextPutAll: length asString;
		nextPut: $).
]

{ #category : #accessing }
MyRectangle >> width [
	^width
]

{ #category : #accessing }
MyRectangle >> width: aNumber [
	width:=aNumber
]
