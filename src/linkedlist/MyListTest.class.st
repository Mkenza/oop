Class {
	#name : #MyListTest,
	#superclass : #TestCase,
	#category : #linkedlist
}

{ #category : #tests }
MyListTest >> testAdd [
	|list|
	list := MyList new.
	list add: 'hello'.
	list add: 'world'.
	
	self assert: list size equals: 2.
]

{ #category : #tests }
MyListTest >> testAt [
	|list|
	list := MyList new.
	list add: 'hello'.
	list add: 'world'.
	
	self assert: ((list at: 1) value) equals: 'hello'.
	self assert: ((list at: 2) value) equals: 'world'.
]

{ #category : #'as yet unclassified' }
MyListTest >> testIsEmpty [
	|list|
	list := MyList new.
	self assert: list isEmpty.
]

{ #category : #tests }
MyListTest >> testRemoveAt [
	|list|
	list := MyList new.
	list add: 'hello'.
	list add: 'world'.
	list removeat: 2.
	
	self assert: list size equals: 1.
]

{ #category : #'as yet unclassified' }
MyListTest >> testSizeEmpty [
	|list|
	list := MyList new.
	self assert: list size equals: 0.
]
