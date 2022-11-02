Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EBinaryExpression >> left: anExpression [
	left := anExpression.
]

{ #category : #'instance creation' }
EBinaryExpression >> right: anExpression [ 
	right := anExpression.
	
]
