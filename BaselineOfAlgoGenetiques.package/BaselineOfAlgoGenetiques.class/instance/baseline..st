baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec repository: 'https://github.com/StevenCostiou/GeneticAlgorithms'.
			spec description: 'Naive Example with BruteForce and GA.'.
			spec package: 'AlgoGenetiques' ]