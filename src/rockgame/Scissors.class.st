Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainst: player [
 ^ player PlayAgainstScissors: self
]

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainstLizard: player [
	^self
]

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainstPaper: player [
	^self
]

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainstRock: player [
	^player
]

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainstScissors: player [
	^'draw'
]

{ #category : #'as yet unclassified' }
Scissors >> PlayAgainstSpock: player [
	^player
]
