Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [
	^ self new expression: anExpression
]

{ #category : #'public access' }
ENegation >> evaluate [
	^ expression evaluate negated.
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression := anExpression
]

{ #category : #arithmetic }
ENegation >> negated [
	^ self class new expression: self
]
