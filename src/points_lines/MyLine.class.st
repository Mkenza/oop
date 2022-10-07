Class {
	#name : #MyLine,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'points_lines'
}

{ #category : #'as yet unclassified' }
MyLine class >> begin: firstPoint end: secondPoint [ 

	|l|
	l := MyLine new.
	l begin: firstPoint .
	l end: secondPoint .
	^l
]

{ #category : #accessing }
MyLine >> begin [

	^begin
]

{ #category : #accessing }
MyLine >> begin: aMyPoint [ 
	begin := aMyPoint
]

{ #category : #accessing }
MyLine >> end [

	^end
]

{ #category : #accessing }
MyLine >> end: aMyPoint [ 
	end := aMyPoint
]

{ #category : #accessing }
MyLine >> gradient [ 
	^((end y - begin y)/(end x - begin x))
]

{ #category : #accessing }
MyLine >> initialize [ 
	super initialize.
	begin := MyPoint new.
	end := MyPoint new.
]

{ #category : #accessing }
MyLine >> length [ 
	^((begin x - end x)**2 + (begin y - end y)**2) sqrt
]

{ #category : #printing }
MyLine >> printOn: aStream [ 
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: begin x asString;
		nextPut: $,;
		nextPutAll: begin y asString;
		nextPut: $);
		nextPut: $-;
		nextPut: $-;
		nextPut: $>;
		nextPut: $(;
		nextPutAll: begin x asString;
		nextPut: $,;
		nextPutAll: begin y asString;
		nextPut: $).
]
