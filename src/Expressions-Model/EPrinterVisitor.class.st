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
	^ '(', lefts , anOperation operationString , rights, ')'
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: aVariable [
	|value|
	value := bindings at: aVariable id.
	^ '( ', aVariable id, value, ' )'
]
