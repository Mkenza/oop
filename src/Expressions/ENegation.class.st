Class {
	#name : #ENegation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

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
