Class {
	#name : #EEvaluatorVisitor,
	#superclass : #EVisitor,
	#category : #'Expressions-Model'
}

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [
^ (anEAddition left accept: self) + (anEAddition right accept: self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: anEDivision [

	  ((anEDivision denominator accept: self) = 0) ifTrue: [EZeroDenominator signal: 'Division by Zero'].
	^ (anEDivision numerator accept: self) / (anEDivision denominator accept: self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [
	^ (anEMultiplication left accept: self) * (anEMultiplication right accept: self)
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: anENegation [
	^(anENegation expression accept: self) negated
]

{ #category : #visiting }
EEvaluatorVisitor >> visitPower: anEPower [
	"x^y: x -> left, y-> right
	we can reuse the binaryExpression methods"
^ (anEPower left accept: self) ** (anEPower right accept: self)
]

{ #category : #accessing }
EEvaluatorVisitor >> visitVariable: aVariable [
	^bindings at: aVariable id 
]
