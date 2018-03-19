algorithm
mate: parents
	| mommy daddy offspring cuttingPoint child |
	offspring := OrderedCollection new.
	configuration populationSize
		timesRepeat: [ mommy := parents atRandom.
			daddy := (parents copyWithout: mommy) atRandom.
			cuttingPoint := configuration numberOfCities atRandom.
			child := OrderedCollection new.
			child addAll: (mommy first: cuttingPoint).
			child addAll: (daddy reject: [ :each | child includes: each ]).
			offspring addLast: child ].
	^ offspring