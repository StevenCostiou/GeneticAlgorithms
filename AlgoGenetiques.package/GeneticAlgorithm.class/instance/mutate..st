algorithm
mutate: enfants
	| enfant v1 v2 |
	configuration mutationRate
		timesRepeat: [ enfant := enfants atRandom.
			v1 := configuration numberOfCities atRandom.
			v2 := configuration numberOfCities atRandom.
			enfant swap: v1 with: v2 ].
	^ enfants