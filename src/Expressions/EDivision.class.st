Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#instVars : [
		'num',
		'denom'
	],
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
	^denom
]

{ #category : #'public access' }
EDivision >> evaluateWith: anObject [
	^ self accept: EEvaluatorVisitor new
]

{ #category : #private }
EDivision >> numerator [
	^num
]

{ #category : #'as yet unclassified' }
EDivision >> numerator:  aValue denominator: aSecondValue [
	num := aValue.
	denom := 	aSecondValue .
]

{ #category : #'public access' }
EDivision >> operatorString [
	^ ' / '
]
