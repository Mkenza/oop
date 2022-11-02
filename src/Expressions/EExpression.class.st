Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #visiting }
EExpression >> accept: aVisitor [
	self subclassResponsibility
]

{ #category : #'public access' }
EExpression >> evaluateWith: anEnvironment [
	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anEnvironment.
	^ self accept: visitor.
]

{ #category : #arithmetic }
EExpression >> negated [
	^ ENegation new expression: self
]

{ #category : #'public access' }
EExpression >> printWith: anEnvironment [
	| visitor |
	visitor := EPrinterVisitor new.
	visitor bindings: anEnvironment.
	^ self accept: visitor.
]
