Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3
]

{ #category : #'as yet unclassified' }
EConstant class >> constant5 [
	<sampleInstance>
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [
	^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> accept: aVisitor [
	^ aVisitor visitConstant: self
]

{ #category : #printing }
EConstant >> asString [
	^self accept: EPrinterVisitor new.
]

{ #category : #printing }
EConstant >> printOn: aStream [
	value printOn: aStream
]

{ #category : #tests }
EConstant >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: 8
]

{ #category : #accessing }
EConstant >> value [
	^value
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger
]
