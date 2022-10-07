Class {
	#name : #Rock,
	#superclass : #Object,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
Rock >> PlayAgainst: player [
 ^ player PlayAgainstRock: self
]

{ #category : #'as yet unclassified' }
Rock >> PlayAgainstLizard: player [
	^self
]

{ #category : #'as yet unclassified' }
Rock >> PlayAgainstPaper: player [
	^player
]

{ #category : #'as yet unclassified' }
Rock >> PlayAgainstRock: player [
	^'draw'
]

{ #category : #'as yet unclassified' }
Rock >> PlayAgainstScissors: player [
	^self
]

{ #category : #'as yet unclassified' }
Rock >> PlayAgainstSpock: player [
	^player
]
