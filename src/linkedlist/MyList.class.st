Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #linkedlist
}

{ #category : #accessing }
MyList >> add: avalue [
	|endNode|
	endNode := MyNode new.
	endNode value: avalue.
	(self isEmpty) ifTrue:[ begin := endNode.
		end := begin.
		];
	ifFalse: [  
	end next: endNode.
	endNode previous: end.
	end := endNode].
	
]

{ #category : #accessing }
MyList >> at: aNumber [
	|c|
	c := MyNode new.
	c := begin.
	2 to: aNumber do: [ :i | c := (c next)].
	^c
	
]

{ #category : #accessing }
MyList >> at: aNumber put: setvalue [
	|c|
	c := MyNode new.
	c := begin.
	2 to: aNumber do: [ :i |c := c next].
	c value: setvalue.
	
]

{ #category : #'as yet unclassified' }
MyList >> initialize [
	super initialize.
	begin := MyNode new.
	end := begin.
	
	
]

{ #category : #accessing }
MyList >> isEmpty [
	^(begin value) isNil.
	
	
]

{ #category : #accessing }
MyList >> removeat: aNumber [
	| current |
	aNumber to: ((self size) - 1) do: [ :i |
		current := (self at: i) next.
		self at: i put: (current value)].
	self at: (self size) put: nil.
	
	
]

{ #category : #accessing }
MyList >> size [
	|current i |
	self isEmpty ifTrue: [^0]
	ifFalse: [ 
		i:=1.
		current := begin.
		[(current next) value isNil] whileFalse: [ i := i + 1 .
		current := current next].
		^i]
	
	
]
