Class {
	#name : #EVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EVisitor >> at: anId put: aValue [
	bindings at: anId put: aValue
]

{ #category : #accessing }
EVisitor >> bindings: aDictionary [
	bindings := aDictionary
]

{ #category : #accessing }
EVisitor >> initialize [
	super initialize.
	bindings := Dictionary new
]
