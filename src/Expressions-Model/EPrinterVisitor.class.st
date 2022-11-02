Class {
	#name : #EPrinterVisitor,
	#superclass : #EVisitor,
	#category : #'Expressions-Model'
}

{ #category : #visiting }
EPrinterVisitor >> visitAddition: anEPower [
	^self visitOperation: anEPower
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [
	^ aConstant value asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: aDivision [
	^self visitOperation: aDivision 
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [
	^self visitOperation: aMultiplication 
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: anENegation [
	^ '- ', anENegation expression asString
]

{ #category : #visiting }
EPrinterVisitor >> visitOperation: anOperation [
	| lefts rights |
	lefts := anOperation  left accept: self.
	rights := anOperation  right accept: self.
	^ '( ', lefts , anOperation operatorString , rights, ' )'
]

{ #category : #visiting }
EPrinterVisitor >> visitPower: aPower [
	^self visitOperation: aPower
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: aVariable [
	|value valstring|
	value := bindings at: aVariable id.
	valstring :=value asString.
	^ '( ', aVariable id, ':', valstring, ' )'
]
