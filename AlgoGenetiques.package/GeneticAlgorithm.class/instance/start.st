algorithm
start
	| offspring parents |
	population := OrderedCollection new.
	configuration populationSize timesRepeat: [ population add: model copy shuffled ].
	configuration numberOfIterations
		timesRepeat: [ parents := self selectParents.
			offspring := self mate: parents.
			offspring := self mutate: offspring.
			population := offspring.
			self progress ].
	bestModel := offspring minFor: [ :child | builder evaluateCost: child ].
	bestResult := builder evaluateCost: bestModel