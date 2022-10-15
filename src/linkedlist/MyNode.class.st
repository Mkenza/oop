Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'previous',
		'next'
	],
	#category : #linkedlist
}

{ #category : #'as yet unclassified' }
MyNode >> next [
	^next
]

{ #category : #'as yet unclassified' }
MyNode >> next: anode [
	next := anode
]

{ #category : #'as yet unclassified' }
MyNode >> previous [
	^previous
]

{ #category : #'as yet unclassified' }
MyNode >> previous: anode [
	previous := anode
]

{ #category : #'as yet unclassified' }
MyNode >> value [
	^value
]

{ #category : #accessing }
MyNode >> value: avalue [
	value := avalue.
]
