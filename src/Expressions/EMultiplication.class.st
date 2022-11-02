Class {
	#name : #EMultiplication,
	#superclass : #Object,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EMultiplication >> evaluate [
	^left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anExpression [
	left := anExpression
]

{ #category : #arithmetic }
EMultiplication >> negated [
	^ ENegation new expression: self
]

{ #category : #accessing }
EMultiplication >> right: anExpression [
	right := anExpression
]
