algorithm
mate: parents
	| enfants pere mere enfant cuttingPoint |
	enfants := OrderedCollection new.
	configuration populationSize
		timesRepeat: [ pere := parents atRandom.
			mere := (parents copyWithout: pere) atRandom.
			enfant := OrderedCollection new.
			cuttingPoint := configuration numberOfCities atRandom.
			enfant addAll: (pere first: cuttingPoint).
			enfant addAll: (mere reject: [ :e | enfant includes: e ]).
			enfants add: enfant ].
	^ enfants