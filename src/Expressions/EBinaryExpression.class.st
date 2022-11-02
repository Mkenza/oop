Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: anEExpression right: anEExpression2 [
	^ self new left: anEExpression; right: anEExpression2
]

{ #category : #'as yet unclassified' }
EBinaryExpression >> evaluateWith: anObject [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
EBinaryExpression >> left [
	^left
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [
	left := anExpression.
]

{ #category : #'as yet unclassified' }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #'as yet unclassified' }
EBinaryExpression >> right [
	^right
]

{ #category : #'instance creation' }
EBinaryExpression >> right: anExpression [ 
	right := anExpression.
	
]
