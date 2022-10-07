Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
Paper >> PlayAgainst: player [
 ^ player PlayAgainstPaper: self
]

{ #category : #'as yet unclassified' }
Paper >> PlayAgainstLizard: player [
	^player
]

{ #category : #'as yet unclassified' }
Paper >> PlayAgainstPaper: player [
	^'draw'
]

{ #category : #'as yet unclassified' }
Paper >> PlayAgainstRock: player [
	^self
]

{ #category : #'as yet unclassified' }
Paper >> PlayAgainstScissors: player [
	^player
]

{ #category : #'as yet unclassified' }
Paper >> PlayAgainstSpock: player [
	^self
]
