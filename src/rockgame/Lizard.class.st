Class {
	#name : #Lizard,
	#superclass : #Object,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainst: player [
 ^ player PlayAgainstLizard: self
]

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainstLizard: player [
	^'draw'
]

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainstPaper: player [
	^self
]

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainstRock: player [
	^player
]

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainstScissors: player [
	^player
]

{ #category : #'as yet unclassified' }
Lizard >> PlayAgainstSpock: player [
	^self
]
