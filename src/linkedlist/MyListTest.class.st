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
	list add: 'hey'.
	
	self assert: list size equals: 3.
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

{ #category : #tests }
MyListTest >> testAtPut [
	|list|
	list := MyList new.
	list add: 'hello'.
	list add: 'world'.
	list at: 1 put: 'heello'.
	
	self assert: (list at: 1) value equals: 'heello'.
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
	list removeat: 1.
	
	self assert: list size equals: 1.
	self assert: (list at: 1) value equals: 'world'.
]

{ #category : #'as yet unclassified' }
MyListTest >> testSize [
	|list|
	list := MyList new.
	list add: 'hello'.
	self assert: list size equals: 1.
]

{ #category : #'as yet unclassified' }
MyListTest >> testSizeEmpty [
	|list|
	list := MyList new.
	self assert: list size equals: 0.
]

{ #category : #tests }
MyListTest >> testprintOn [
	|list|
	list := MyList new.
	list add: 'hello'.
	list add: 'world'.
	self assert: list asString equals: '(nil,hello,world) (hello,world,nil) '
]
