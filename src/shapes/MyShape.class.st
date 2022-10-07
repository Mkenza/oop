Class {
	#name : #MyShape,
	#superclass : #Object,
	#instVars : [
		'color',
		'isFilled'
	],
	#category : #shapes
}

{ #category : #accessing }
MyShape >> area [
	^1
]

{ #category : #initialization }
MyShape >> initialize [ 
	super initialize.
	isFilled :=false.
	color := 'Blue'.
]

{ #category : #accessing }
MyShape >> perimetre [
	^1
]
