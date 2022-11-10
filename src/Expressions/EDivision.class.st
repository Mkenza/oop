Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EDivision class >> fiveOfAThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2
]

{ #category : #'instance creation' }
EDivision class >> numerator: anEExpression denominator:  anEExpression2 [
	^ self new numerator: anEExpression denominator:  anEExpression2
]

{ #category : #visiting }
EDivision >> accept: aVisitor [
	^ aVisitor visitDivision: self
]

{ #category : #private }
EDivision >> denominator [ 
	^right
]

{ #category : #private }
EDivision >> numerator [
	^left
]

{ #category : #'as yet unclassified' }
EDivision >> numerator:  aValue denominator: aSecondValue [
	left := aValue.
	right := 	aSecondValue .
]

{ #category : #'public access' }
EDivision >> operatorString [
	^ ' / '
]
