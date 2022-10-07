Class {
	#name : #GameTest,
	#superclass : #TestCase,
	#category : #rockgame
}

{ #category : #'as yet unclassified' }
GameTest >> testLizardVSLizard [
	|g pl1 pl2|
	g := Game new.
	pl1 := Lizard new.
	pl2 := Lizard new.
	self assert: (g Play: pl1 Against: pl2) equals: 'draw'
]

{ #category : #'as yet unclassified' }
GameTest >> testLizardVSPaper [
	|g pl1 pl2|
	g := Game new.
	pl1 := Lizard new.
	pl2 := Paper new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testLizardVSRock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Lizard new.
	pl2 := Rock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testLizardVSScissors [
	|g pl1 pl2|
	g := Game new.
	pl1 := Lizard new.
	pl2 := Scissors new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testLizardVSSpock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Lizard new.
	pl2 := Spock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testPaperVSLizard [
	|g pl1 pl2|
	g := Game new.
	pl1 := Paper new.
	pl2 := Lizard new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testPaperVSPaper [
	|g pl1 pl2|
	g := Game new.
	pl1 := Paper new.
	pl2 := Paper new.
	self assert: (g Play: pl1 Against: pl2) equals: 'draw'
]

{ #category : #'as yet unclassified' }
GameTest >> testPaperVSRock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Paper new.
	pl2 := Rock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testPaperVSScissors [
	|g pl1 pl2|
	g := Game new.
	pl1 := Paper new.
	pl2 := Scissors new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testPaperVSSpock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Paper new.
	pl2 := Spock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testRockVSLizard [
	|g pl1 pl2|
	g := Game new.
	pl1 := Rock new.
	pl2 := Lizard new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testRockVSPaper [
	|g pl1 pl2|
	g := Game new.
	pl1 := Rock new.
	pl2 := Paper new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testRockVSRock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Rock new.
	pl2 := Rock new.
	self assert: (g Play: pl1 Against: pl2) equals: 'draw'
]

{ #category : #'as yet unclassified' }
GameTest >> testRockVSScissors [
	|g pl1 pl2|
	g := Game new.
	pl1 := Rock new.
	pl2 := Scissors new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testRockVSSpock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Rock new.
	pl2 := Spock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testScissorsVSLizard [
	|g pl1 pl2|
	g := Game new.
	pl1 := Scissors new.
	pl2 := Lizard new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testScissorsVSPaper [
	|g pl1 pl2|
	g := Game new.
	pl1 := Scissors new.
	pl2 := Paper new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testScissorsVSRock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Scissors new.
	pl2 := Rock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testScissorsVSScissors [
	|g pl1 pl2|
	g := Game new.
	pl1 := Scissors new.
	pl2 := Scissors new.
	self assert: (g Play: pl1 Against: pl2) equals: 'draw'
]

{ #category : #'as yet unclassified' }
GameTest >> testScissorsVSSpock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Scissors new.
	pl2 := Spock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testSpockVSLizard [
	|g pl1 pl2|
	g := Game new.
	pl1 := Spock new.
	pl2 := Lizard new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testSpockVSPaper [
	|g pl1 pl2|
	g := Game new.
	pl1 := Spock new.
	pl2 := Paper new.
	self assert: (g Play: pl1 Against: pl2) equals: pl2
]

{ #category : #'as yet unclassified' }
GameTest >> testSpockVSRock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Spock new.
	pl2 := Rock new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testSpockVSScissors [
	|g pl1 pl2|
	g := Game new.
	pl1 := Spock new.
	pl2 := Scissors new.
	self assert: (g Play: pl1 Against: pl2) equals: pl1
]

{ #category : #'as yet unclassified' }
GameTest >> testSpockVSSpock [
	|g pl1 pl2|
	g := Game new.
	pl1 := Spock new.
	pl2 := Spock new.
	self assert: (g Play: pl1 Against: pl2) equals: 'draw'
]
