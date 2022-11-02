Class {
	#name : #EAddition,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EAddition >> evaluate [
	^left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> left: anExpression [
	left := anExpression.
]

{ #category : #arithmetic }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : #'instance creation' }
EAddition >> right: anExpression [ 
	right := anExpression.
	
]
