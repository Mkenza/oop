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
	|c next|
	c := begin.
	1 to: aNumber -1 do: [ :i |next := c next].
	next value: setvalue.
	
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
	|current|
	current := MyNode new.
	current := self at: aNumber.
	[(current isNil)] whileFalse: [ current := (current next)].
	'aNumber -1 to: (self size) - 1 do: [ :i |current := current next].
	'
	
	
]

{ #category : #accessing }
MyList >> size [
	|current i |
	self isEmpty ifTrue: [^0]
	ifFalse: [ 
		i:=1.
		current := begin.
		[(current next) isNil] whileFalse: [ i := i + 1 .
		current := current next].
		^i]
	
	
]
