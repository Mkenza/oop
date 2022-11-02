Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> left: anEExpression right: anEExpression2 [
	^ self new left: anEExpression; right: anEExpression2
]

{ #category : #'public access' }
EMultiplication >> evaluate [
	^left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anExpression [
	left := anExpression
]

{ #category : #accessing }
EMultiplication >> right: anExpression [
	right := anExpression
]
