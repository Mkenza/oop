Class {
	#name : #Spock,
	#superclass : #Object,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
Spock >> PlayAgainst: player [
 ^ player PlayAgainstSpock: self
]

{ #category : #'as yet unclassified' }
Spock >> PlayAgainstLizard: player [
	^player
]

{ #category : #'as yet unclassified' }
Spock >> PlayAgainstPaper: player [
	^player
]

{ #category : #'as yet unclassified' }
Spock >> PlayAgainstRock: player [
	^self
]

{ #category : #'as yet unclassified' }
Spock >> PlayAgainstScissors: player [
	^self
]

{ #category : #'as yet unclassified' }
Spock >> PlayAgainstSpock: player [
	^'draw'
]
