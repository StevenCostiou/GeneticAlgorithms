algorithm
mutate: offspring
	configuration mutationRate
		timesRepeat: [ | index child |
			index := offspring size atRandom.
			child := offspring at: index.
			child swap: child size atRandom with: child size atRandom.
			offspring at: index put: child ].
		^ offspring